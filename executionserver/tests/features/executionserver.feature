Feature: Standalone Execution Server tests

  Scenario: Test REST API is secure
    When container is ready
    Then check that page is served
         | property | value |
         | port     | 8080  |
         | path     | /services/rest/server |
         | expected_status_code | 401 |

   Scenario: Test REST API is available and valid
     When container is ready
     Then check that page is served
         | property | value |
         | port     | 8080  |
         | path     | /services/rest/server |
         | username | kieserver |
         | password | kieserver1! |
         | expected_phrase | SUCCESS |

