baselines-31
baseline310rss: spec
	<version: '3.1.0-rss-baseline' imports: #('3.1.0-common-baseline')>

	spec for: #'common' do: [	
		spec blessing: #baseline.
		spec 
			package: 'RSS-Core' with: [
				spec requires: #('Seaside-Core' 'Seaside-Canvas') ];
			package: 'RSS-Tests-Core' with: [
				spec requires: #('RSS-Core' 'Seaside-Tests-Core') ];
			package: 'RSS-Examples' with: [
				spec requires: #('RSS-Core' 'Seaside-Tools-Core'). ].
		spec 
			group: 'RSS' with: #('RSS-Core');
			group: 'RSS Tests' with: #('RSS-Tests-Core');
			group: 'RSS Examples' with: #('RSS-Examples') ].