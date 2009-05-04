require File.dirname(__FILE__) + '/../spec_helper.rb'

describe 'sample gem source code' do
  it "reports the correct smells in optparse.rb" do
    ruby = File.new("#{SAMPLES_DIR}/optparse.rb").to_source
    ruby.should reek_of(:ControlCouple, /OptionParser#List#accept/, /pat/)
    ruby.should reek_of(:ControlCouple, /OptionParser#List#update/, /lopts/)
    ruby.should reek_of(:ControlCouple, /OptionParser#List#update/, /sopts/)
    ruby.should reek_of(:ControlCouple, /OptionParser#ParseError#set_option/, /eq/)
    ruby.should reek_of(:ControlCouple, /OptionParser#Switch#NoArgument#parse/, /arg/)
    ruby.should reek_of(:ControlCouple, /OptionParser#Switch#OptionalArgument#parse/, /arg/)
    ruby.should reek_of(:ControlCouple, /OptionParser#Switch#RequiredArgument#parse/, /arg/)
    ruby.should reek_of(:ControlCouple, /OptionParser#parse_in_order/, /setter/)
    ruby.should reek_of(:Duplication, /OptionParser#Completion::complete/, /candidates.size/)
    ruby.should reek_of(:Duplication, /OptionParser#Completion::complete/, /k.id2name/)
    ruby.should reek_of(:Duplication, /OptionParser#Switch#parse_arg/, /s.length/)
    ruby.should reek_of(:Duplication, /OptionParser#Switch#summarize/, /left.collect \{ \|s\| s\.length \}\.max/)
    ruby.should reek_of(:Duplication, /OptionParser#Switch#summarize/, /left.collect \{ \|s\| s\.length \}\.max\.to_i/)
    ruby.should reek_of(:Duplication, /OptionParser#Switch#summarize/, /\(indent \+ l\)/)
    ruby.should reek_of(:Duplication, /OptionParser#Switch#summarize/, /left.collect/)
    ruby.should reek_of(:Duplication, /OptionParser#Switch#summarize/, /left.shift/)
    ruby.should reek_of(:Duplication, /OptionParser#Switch#summarize/, /left\[-1\]/)
    ruby.should reek_of(:Duplication, /OptionParser#Switch#summarize/, /s.length/)
    ruby.should reek_of(:Duplication, /OptionParser#getopts/, /result\[opt\] = false/)
    ruby.should reek_of(:Duplication, /OptionParser#make_switch/, /default_style.guess\(arg = a\)/)
    ruby.should reek_of(:Duplication, /OptionParser#make_switch/, /\(long << o = q.downcase\)/)
    ruby.should reek_of(:Duplication, /OptionParser#make_switch/, /pattern.method\(:convert\)/)
    ruby.should reek_of(:Duplication, /OptionParser#make_switch/, /pattern.method\(:convert\).to_proc/)
    ruby.should reek_of(:Duplication, /OptionParser#make_switch/, /pattern.respond_to\?\(:convert\)/)
    ruby.should reek_of(:Duplication, /OptionParser#make_switch/, /q.downcase/)
    ruby.should reek_of(:Duplication, /OptionParser#make_switch/, /\(sdesc << "-\#\{q\}"\)/)
    ruby.should reek_of(:Duplication, /OptionParser#order/, /argv\[0\]/)
    ruby.should reek_of(:Duplication, /OptionParser#parse/, /argv\[0\]/)
    ruby.should reek_of(:Duplication, /OptionParser#parse_in_order/, /\$\!.set_option\(arg, true\)/)
    ruby.should reek_of(:Duplication, /OptionParser#parse_in_order/, /cb.call\(val\)/)
    ruby.should reek_of(:Duplication, /OptionParser#parse_in_order/, /setter.call\(sw.switch_name, val\)/)
    ruby.should reek_of(:Duplication, /OptionParser#parse_in_order/, /sw.block/)
    ruby.should reek_of(:Duplication, /OptionParser#parse_in_order/, /sw.switch_name/)
    ruby.should reek_of(:Duplication, /OptionParser#permute/, /argv\[0\]/)
    ruby.should reek_of(:FeatureEnvy, /OptionParser#Completion::complete/, /candidates/)
    ruby.should reek_of(:FeatureEnvy, /OptionParser#List#accept/, /pat/)
    ruby.should reek_of(:FeatureEnvy, /OptionParser#Switch#summarize/, /left/)
    ruby.should reek_of(:FeatureEnvy, /OptionParser#order/, /argv/)
    ruby.should reek_of(:FeatureEnvy, /OptionParser#parse/, /argv/)
    ruby.should reek_of(:FeatureEnvy, /OptionParser#permute/, /argv/)
    ruby.should reek_of(:LargeClass, /OptionParser/)
    ruby.should reek_of(:LongMethod, /OptionParser#Completion::complete/)
    ruby.should reek_of(:LongMethod, /OptionParser#List#update/)
#    ruby.should reek_of(:LongMethod, /OptionParser#Switch#PlacedArgument#parse/)
    ruby.should reek_of(:LongMethod, /OptionParser#Switch#parse_arg/)
    ruby.should reek_of(:LongMethod, /OptionParser#Switch#summarize/)
    ruby.should reek_of(:LongMethod, /OptionParser#getopts/)
    ruby.should reek_of(:LongMethod, /OptionParser#make_switch/)
    ruby.should reek_of(:LongMethod, /OptionParser#parse_in_order/)
    ruby.should reek_of(:LongParameterList, /OptionParser#List#complete/)
    ruby.should reek_of(:LongParameterList, /OptionParser#List#update/)
    ruby.should reek_of(:LongParameterList, /OptionParser#Switch#initialize/)
    ruby.should reek_of(:LongParameterList, /OptionParser#Switch#summarize/)
    ruby.should reek_of(:LongParameterList, /OptionParser#complete/)
    ruby.should reek_of(:LongParameterList, /OptionParser#summarize/)
    ruby.should reek_of(:NestedIterators, /OptionParser#CompletingHash#match/)
    ruby.should reek_of(:NestedIterators, /OptionParser#Switch#summarize/)
    ruby.should reek_of(:NestedIterators, /OptionParser#block/)
    ruby.should reek_of(:NestedIterators, /OptionParser#complete/)
    ruby.should reek_of(:NestedIterators, /OptionParser#make_switch/)
    ruby.should reek_of(:NestedIterators, /OptionParser#make_switch/)
    ruby.should reek_of(:NestedIterators, /OptionParser#parse_in_order/)
    ruby.should reek_of(:NestedIterators, /OptionParser#parse_in_order/)
    ruby.should reek_of(:UncommunicativeName, /OptionParser#Completion::complete/, /'k'/)
    ruby.should reek_of(:UncommunicativeName, /OptionParser#Completion::complete/, /'v'/)
    ruby.should reek_of(:UncommunicativeName, /OptionParser#List#accept/, /'t'/)
    ruby.should reek_of(:UncommunicativeName, /OptionParser#List#reject/, /'t'/)
    ruby.should reek_of(:UncommunicativeName, /OptionParser#List#update/, /'o'/)
    ruby.should reek_of(:UncommunicativeName, /OptionParser#Switch#add_banner/, /'s'/)
    ruby.should reek_of(:UncommunicativeName, /OptionParser#Switch#parse_arg/, /'m'/)
    ruby.should reek_of(:UncommunicativeName, /OptionParser#Switch#parse_arg/, /'s'/)
    ruby.should reek_of(:UncommunicativeName, /OptionParser#Switch#self.guess/, /'t'/)
    ruby.should reek_of(:UncommunicativeName, /OptionParser#Switch#self.incompatible_argument_styles/, /'t'/)
    ruby.should reek_of(:UncommunicativeName, /OptionParser#Switch#summarize/, /'l'/)
    ruby.should reek_of(:UncommunicativeName, /OptionParser#Switch#summarize/, /'r'/)
    ruby.should reek_of(:UncommunicativeName, /OptionParser#Switch#summarize/, /'s'/)
    ruby.should reek_of(:UncommunicativeName, /OptionParser#block/, /'f'/)
    ruby.should reek_of(:UncommunicativeName, /OptionParser#block/, /'k'/)
    ruby.should reek_of(:UncommunicativeName, /OptionParser#block/, /'o'/)
    ruby.should reek_of(:UncommunicativeName, /OptionParser#block/, /'s'/)
    ruby.should reek_of(:UncommunicativeName, /OptionParser#block/, /'v'/)
    ruby.should reek_of(:UncommunicativeName, /OptionParser#load/, /'s'/)
    ruby.should reek_of(:UncommunicativeName, /OptionParser#make_switch/, /'a'/)
    ruby.should reek_of(:UncommunicativeName, /OptionParser#make_switch/, /'n'/)
    ruby.should reek_of(:UncommunicativeName, /OptionParser#make_switch/, /'o'/)
    ruby.should reek_of(:UncommunicativeName, /OptionParser#make_switch/, /'q'/)
    ruby.should reek_of(:UncommunicativeName, /OptionParser#make_switch/, /'s'/)
    ruby.should reek_of(:UncommunicativeName, /OptionParser#make_switch/, /'c'/)
    ruby.should reek_of(:UncommunicativeName, /OptionParser#make_switch/, /'v'/)
    ruby.should reek_of(:UncommunicativeName, /OptionParser#search/, /'k'/)
    ruby.should reek_of(:UncommunicativeName, /OptionParser#summarize/, /'l'/)
    ruby.should reek_of(:UncommunicativeName, /OptionParser#ver/, /'v'/)
    ruby.should reek_of(:UncommunicativeName, /block/, /'q'/)
    ruby.report.should have_at_most(93).smells
  end
end
