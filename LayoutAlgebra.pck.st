'From Cuis 6.0 [latest update: #6053] on 5 January 2024 at 9:14:26 pm'!
'Description '!
!provides: 'LayoutAlgebra' 1 5!
SystemOrganization addCategory: #LayoutAlgebra!



!PlacedMorph methodsFor: '*LayoutAlgebra' stamp: 'DF 1/4/2024 19:18:55'!
+ aPlacedMorph

	^LayoutMorph new beRow addMorph: self ; addMorph: aPlacedMorph ; yourself
	! !

!PlacedMorph methodsFor: '*LayoutAlgebra' stamp: 'DF 1/4/2024 19:19:14'!
/ aPlacedMorph

	^LayoutMorph new beColumn addMorph: self ; addMorph: aPlacedMorph ; yourself
	! !

!PlacedMorph methodsFor: '*LayoutAlgebra' stamp: 'DF 1/4/2024 21:56:14'!
<+> aPlacedMorph

	^LayoutMorph new beRow addMorph: self ; addAdjusterMorph ; addMorph: aPlacedMorph ; yourself
	! !

!PlacedMorph methodsFor: '*LayoutAlgebra' stamp: 'DF 1/4/2024 21:56:31'!
</> aPlacedMorph

	^LayoutMorph new beColumn addMorph: self ; addAdjusterMorph; addMorph: aPlacedMorph ; yourself
	! !

!PlacedMorph methodsFor: '*LayoutAlgebra' stamp: 'DF 1/5/2024 21:10:47'!
align: aSymbolOrNumber
	self layoutSpec offAxisEdgeWeight: aSymbolOrNumber. 
	
	^self	! !

!PlacedMorph methodsFor: '*LayoutAlgebra' stamp: 'DF 1/5/2024 21:07:49'!
fh: aNumber

	self layoutSpec fixedHeight: aNumber. ^self! !

!PlacedMorph methodsFor: '*LayoutAlgebra' stamp: 'DF 1/5/2024 21:07:55'!
fw: aNumber

	self layoutSpec fixedWidth: aNumber. ^self! !

!PlacedMorph methodsFor: '*LayoutAlgebra' stamp: 'DF 1/4/2024 20:18:15'!
ph: aNumber

	self layoutSpec proportionalHeight: aNumber. ^self! !

!PlacedMorph methodsFor: '*LayoutAlgebra' stamp: 'DF 1/4/2024 19:25:22'!
pw: aNumber

	self layoutSpec proportionalWidth: aNumber. ^self! !

!LayoutMorph methodsFor: '*LayoutAlgebra' stamp: 'DF 1/4/2024 19:23:40'!
+ aPlacedMorph

	self isRow 
		ifTrue:[self addMorph: aPlacedMorph. ^self]
		ifFalse:[^LayoutMorph new beRow addMorph: self ; addMorph: aPlacedMorph ; yourself]
	! !

!LayoutMorph methodsFor: '*LayoutAlgebra' stamp: 'DF 1/4/2024 19:35:08'!
/ aPlacedMorph

	self isColumn
		ifTrue:[self addMorph: aPlacedMorph. ^self]
		ifFalse:[^LayoutMorph new beColumn addMorph: self ; addMorph: aPlacedMorph ; yourself]
	! !

!LayoutMorph methodsFor: '*LayoutAlgebra' stamp: 'DF 1/4/2024 22:01:32'!
<+> aPlacedMorph

	self isRow 
		ifTrue:[self addAdjusterMorph; addMorph: aPlacedMorph. ^self]
		ifFalse:[^LayoutMorph new beRow addMorph: self ; addAdjusterMorph; addMorph: aPlacedMorph ; yourself]
	! !

!LayoutMorph methodsFor: '*LayoutAlgebra' stamp: 'DF 1/4/2024 21:58:24'!
</> aPlacedMorph

	self isColumn
		ifTrue:[self addAdjusterMorph; addMorph: aPlacedMorph. ^self]
		ifFalse:[^LayoutMorph new beColumn addMorph: self ; addAdjusterMorph;  addMorph: aPlacedMorph ; yourself]
	! !

!LayoutMorph methodsFor: '*LayoutAlgebra' stamp: 'DF 1/4/2024 19:26:30'!
@ aNumber

	self separation: aNumber.
	
	^self! !
