@jboss-bpmsuite-7
Feature: Standalone Business Central tests

  Scenario: Console is available
    When container is ready
    Then check that page is served
         | property             | value       |
         | port                 | 8080        |
         | path                 | /kie-wb.jsp |
         | wait                 | 60          |
         | expected_status_code | 200         |

