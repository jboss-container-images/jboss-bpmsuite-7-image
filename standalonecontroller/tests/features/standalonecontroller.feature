@jboss-bpmsuite-7
Feature: Standalone Controller tests

  Scenario: Test REST API is secure
    When container is ready
    Then check that page is served
         | property             | value                 |
         | port                 | 8080                  |
         | path                 | /services/rest/server |
         | expected_status_code | 401                   |
