grails.servlet.version = "2.5"
grails.project.class.dir = "target/classes"
grails.project.test.class.dir = "target/test-classes"
grails.project.test.reports.dir = "target/test-reports"
grails.project.target.level = 1.6
grails.project.source.level = 1.6

grails.plugin.location.'transmart-core' = '/Users/vmahavis/Workbench/transmart-core-db' //set to transmart-core-db path

grails.project.dependency.resolution = {
    // inherit Grails' default dependencies
    inherits("global") {
        // uncomment to disable ehcache
        // excludes 'ehcache'
    }
    log "warn" // log level of Ivy resolver, either 'error', 'warn', 'info', 'debug' or 'verbose'
    repositories {
        grailsPlugins()
        grailsHome()
        grailsCentral()

        mavenLocal()
        mavenCentral()
        mavenRepo([
                name: 'repo.hyve.nl-snapshots',
                root: 'http://repo.thehyve.nl/content/repositories/snapshots/',
        ])
    }
    dependencies {
        runtime 'postgresql:postgresql:9.0-801.jdbc4'
        compile 'antlr:antlr:2.7.7'
        compile 'org.transmartproject:transmart-core-api:1.0-SNAPSHOT'
    }

    plugins {
        compile ":hibernate:$grailsVersion"
        compile ":quartz:1.0-RC2"
        compile ":rdc-rmodules:0.2"
        compile ":spring-security-core:1.2.7.3"
        compile ":resources:1.1.6"
        build ":tomcat:$grailsVersion"
        build ":build-info:1.1"
        runtime ":prototype:1.0"
        runtime ":transmart-core:1.0-SNAPSHOT"
    }
}

/* For development, it's interesting to use the plugins in-place.

 * This allows the developer to put the grails.plugin.location.* assignments
 * in an out-of-tree BuildConfig file if they want to.
 * Snippet from https://gist.github.com/acreeger/910438
 */
def buildConfigFile = new File("${userHome}/.grails/${appName}Config/" +
        "BuildConfig.groovy")
if (buildConfigFile.exists()) {
    println "Processing external build config at $buildConfigFile"
    def slurpedBuildConfig = new ConfigSlurper().parse(buildConfigFile.toURL())
    slurpedBuildConfig.grails.plugin.location.each { k, v ->
        if (!new File(v).exists()) {
            println "WARNING: Cannot load in-place plugin from ${v} as that " +
                    "directory does not exist."
        } else {
            println "Loading in-place plugin $k from $v"
            grails.plugin.location."$k" = v
        }
        if (grailsSettings.projectPluginsDir?.exists()) {
            grailsSettings.projectPluginsDir.eachDirMatch(~/${k}.*/) {dir ->
                println "WARNING: Found a plugin directory at $dir that is a " +
                        "possible conflict and may prevent grails from using " +
                        "the in-place $k plugin."
            }
        }
    }
}