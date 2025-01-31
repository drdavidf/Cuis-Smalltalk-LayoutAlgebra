'From Cuis7.1 [latest update: #7041] on 31 January 2025 at 12:27:37 pm'!
'Description '!
!provides: 'LayoutAlgebra' 1 12!
SystemOrganization addCategory: #LayoutAlgebra!


!classDefinition: #Quantity category: #LayoutAlgebra!
Object subclass: #Quantity
	instanceVariableNames: 'quantity'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'LayoutAlgebra'!
!classDefinition: 'Quantity class' category: #LayoutAlgebra!
Quantity class
	instanceVariableNames: ''!

!classDefinition: #FixedQuantity category: #LayoutAlgebra!
Quantity subclass: #FixedQuantity
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'LayoutAlgebra'!
!classDefinition: 'FixedQuantity class' category: #LayoutAlgebra!
FixedQuantity class
	instanceVariableNames: ''!

!classDefinition: #ProportionalQuantity category: #LayoutAlgebra!
Quantity subclass: #ProportionalQuantity
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'LayoutAlgebra'!
!classDefinition: 'ProportionalQuantity class' category: #LayoutAlgebra!
ProportionalQuantity class
	instanceVariableNames: ''!


!Quantity methodsFor: 'as yet unclassified' stamp: 'DF 3/20/2024 15:48:24'!
changeHeightOf: aMorph

	self subclassResponsibility ! !

!Quantity methodsFor: 'as yet unclassified' stamp: 'DF 3/20/2024 15:48:09'!
changeWidthOf: aMorph

	self subclassResponsibility ! !

!Quantity methodsFor: 'as yet unclassified' stamp: 'DF 3/20/2024 15:40:10'!
value
	^quantity! !

!Quantity methodsFor: 'as yet unclassified' stamp: 'DF 3/20/2024 15:40:40'!
value: aNumber
	quantity := aNumber! !

!FixedQuantity methodsFor: 'as yet unclassified' stamp: 'DF 3/20/2024 15:49:21'!
changeHeightOf: aMorph

	aMorph layoutSpec fixedHeight: quantity. ^aMorph! !

!FixedQuantity methodsFor: 'as yet unclassified' stamp: 'DF 3/20/2024 15:49:11'!
changeWidthOf: aMorph

	aMorph layoutSpec fixedWidth: quantity. ^aMorph! !

!ProportionalQuantity methodsFor: 'as yet unclassified' stamp: 'DF 3/20/2024 15:49:31'!
changeHeightOf: aMorph

	aMorph layoutSpec proportionalHeight: quantity. ^aMorph! !

!ProportionalQuantity methodsFor: 'as yet unclassified' stamp: 'DF 3/20/2024 15:49:41'!
changeWidthOf: aMorph

	aMorph layoutSpec proportionalWidth: quantity. ^aMorph! !

!Collection methodsFor: '*LayoutAlgebra' stamp: 'DF 10/3/2024 15:48:50'!
morph

	^PluggableListMorph withModel: self listGetter: #yourself indexGetter: nil indexSetter: nil	! !

!CharacterSequence methodsFor: '*LayoutAlgebra' stamp: 'DF 9/30/2024 14:59:04'!
button
	^(PluggableButtonMorph model: (Switch new) stateGetter: nil action: #switch) label:self! !

!CharacterSequence methodsFor: '*LayoutAlgebra' stamp: 'DF 1/5/2025 17:27:53'!
edit
	^TextEntryMorph contents: self! !

!CharacterSequence methodsFor: '*LayoutAlgebra' stamp: 'DF 1/4/2025 19:30:23'!
morph
	^LabelMorph contents: self! !

!Number methodsFor: '*LayoutAlgebra' stamp: 'DF 3/20/2024 15:41:52'!
f
	^ FixedQuantity new value: self ; yourself! !

!Number methodsFor: '*LayoutAlgebra' stamp: 'DF 1/5/2025 18:43:24'!
morph
	^LabelMorph contents: ('{1}' format:{self})! !

!Number methodsFor: '*LayoutAlgebra' stamp: 'DF 3/20/2024 15:42:11'!
p
	^ ProportionalQuantity new value: self ; yourself! !

!PlacedMorph methodsFor: '*LayoutAlgebra' stamp: 'DF 9/7/2024 21:22:43'!
+ aPlacedMorph

	^LayoutMorph newRow addMorph: self ; addMorph: aPlacedMorph ; yourself
	! !

!PlacedMorph methodsFor: '*LayoutAlgebra' stamp: 'DF 3/20/2024 15:48:44'!
- aQuantity

	^ aQuantity changeWidthOf: self! !

!PlacedMorph methodsFor: '*LayoutAlgebra' stamp: 'DF 9/7/2024 21:43:05'!
/ aPlacedMorph

	^LayoutMorph newColumn addMorph: self ; addMorph: aPlacedMorph ; yourself
	! !

!PlacedMorph methodsFor: '*LayoutAlgebra' stamp: 'DF 9/7/2024 21:43:09'!
<+> aPlacedMorph

	^LayoutMorph newRow addMorph: self ; addAdjusterMorph ; addMorph: aPlacedMorph ; yourself
	! !

!PlacedMorph methodsFor: '*LayoutAlgebra' stamp: 'DF 9/7/2024 21:43:13'!
</> aPlacedMorph

	^LayoutMorph newColumn addMorph: self ; addAdjusterMorph; addMorph: aPlacedMorph ; yourself
	! !

!PlacedMorph methodsFor: '*LayoutAlgebra' stamp: 'DF 3/20/2024 15:50:05'!
| aQuantity

	^ aQuantity changeHeightOf: self! !

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

!PlacedMorph methodsFor: '*LayoutAlgebra' stamp: 'DF 3/20/2024 16:28:57'!
open: aString

	self embeddedInMorphicWindowLabeled: aString :: openInWorld ! !

!PlacedMorph methodsFor: '*LayoutAlgebra' stamp: 'DF 1/4/2024 20:18:15'!
ph: aNumber

	self layoutSpec proportionalHeight: aNumber. ^self! !

!PlacedMorph methodsFor: '*LayoutAlgebra' stamp: 'DF 1/4/2024 19:25:22'!
pw: aNumber

	self layoutSpec proportionalWidth: aNumber. ^self! !

!LayoutMorph methodsFor: '*LayoutAlgebra' stamp: 'DF 12/27/2024 17:40:08'!
+ aPlacedMorph

	self isRow 
		ifTrue:[self addMorph: aPlacedMorph. ^self]
		ifFalse:[^LayoutMorph newRow addMorph: self ; addMorph: aPlacedMorph ; yourself]
	! !

!LayoutMorph methodsFor: '*LayoutAlgebra' stamp: 'DF 10/3/2024 23:29:28'!
/ aPlacedMorph

	self isColumn
		ifTrue:[self addMorph: aPlacedMorph. ^self]
		ifFalse:[^LayoutMorph newColumn addMorph: self ; addMorph: aPlacedMorph ; yourself]
	! !

!LayoutMorph methodsFor: '*LayoutAlgebra' stamp: 'DF 12/27/2024 17:40:01'!
<+> aPlacedMorph

	self isRow 
		ifTrue:[self addAdjusterMorph; addMorph: aPlacedMorph. ^self]
		ifFalse:[^LayoutMorph newRow addMorph: self ; addAdjusterMorph; addMorph: aPlacedMorph ; yourself]
	! !

!LayoutMorph methodsFor: '*LayoutAlgebra' stamp: 'DF 12/27/2024 17:39:51'!
</> aPlacedMorph

	self isColumn
		ifTrue:[self addAdjusterMorph; addMorph: aPlacedMorph. ^self]
		ifFalse:[^LayoutMorph newColumn addMorph: self ; addAdjusterMorph;  addMorph: aPlacedMorph ; yourself]
	! !

!LayoutMorph methodsFor: '*LayoutAlgebra' stamp: 'DF 1/4/2024 19:26:30'!
@ aNumber

	self separation: aNumber.
	
	^self! !
