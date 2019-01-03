---
topic: "Nokogiri Compilation Problems"
desc: "Problems when running ./setup.sh on Mac OS with Nokogiri"
---

# What worked (09/13/2018, Mac OS 10.13.6, High Sierra)

```
brew update
brew install libxml2
bundle config build.nokogiri --use-system-libraries \
  --with-xml2-include=$(brew --prefix libxml2)/include/libxml2
bundle install
```

Source: <http://www.nokogiri.org/tutorials/installing_nokogiri.html#install_with_system_libraries>

# Other sources
* <https://stackoverflow.com/questions/5528839/why-does-installing-nokogiri-on-mac-os-fail-with-libiconv-is-missing>
* <https://stackoverflow.com/questions/40038953/how-to-install-nokogiri-on-mac-os-sierra-10-12>

