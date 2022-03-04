ruleset app_section {
    meta {
        
    }
    global {
    }
    rule pico_ruleset_added {
        select when wrangler ruleset_installed
          where event:attr("rids") >< meta:rid
        pre {
          section_id = event:attr("section_id")
        }
        always {
          ent:section_id := section_id
        }
      }
}