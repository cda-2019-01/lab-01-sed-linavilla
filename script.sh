sed 's#/#-#g' data.csv > datos1 #
sed 's#\([0-9][0-9]\)-\([0-9][0-9]\)-\([0-9][0-9]\)#20\3-\2-\1#' datos1 > datos2 #
sed 's#;;#;\\N;#g' datos2 > datos3 #
sed 's#;N#;\\N#g' datos3 > datos4 #
sed 's#;\r#;\\N#g' datos4 > datos5 #
sed 's#;#,#g' datos5 > datos6 #
sed 's#\([0-9][0-9][0-9]\),#\1\.#g' datos6 > datos7 #
sed '/\N/d' datos7 > Final #
rm datos* #
cat Final