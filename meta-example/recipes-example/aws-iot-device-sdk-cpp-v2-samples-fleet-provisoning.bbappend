do_install_ptest_append() {
    install -d ${D}/home/root/.aws

    echo [default] > ${D}/home/root/.aws/credentials
    echo "aws_access_key_id = XXX" >> ${D}/home/root/.aws/credentials
    echo "aws_secret_access_key = XXX" >> ${D}/home/root/.aws/credentials
    echo "region = eu-west-1" >> ${D}/home/root/.aws/credentials
}