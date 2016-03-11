#!/bin/bash

./get_token.sh
./post_customer.sh
./post_customer_address.sh
./post_customer_bankaccount.sh
./post_application.sh
./put_application_bankaccountlink.sh
./put_application_status_accepted.sh
./get_application_documentrequests.sh
./get_application_documentrequest.sh
#./put_application_checklistcondition.sh
./post_application_signedcreditagreement.sh
./get_application_status.sh

