## Module AWS.WAFRegional.Types

#### `options`

``` purescript
options :: Options
```

#### `Action`

``` purescript
newtype Action
  = Action String
```

##### Instances
``` purescript
Newtype Action _
Generic Action _
Show Action
Decode Action
Encode Action
```

#### `ActivatedRule`

``` purescript
newtype ActivatedRule
  = ActivatedRule { "Priority" :: RulePriority, "RuleId" :: ResourceId, "Action" :: Maybe (WafAction), "OverrideAction" :: Maybe (WafOverrideAction), "Type" :: Maybe (WafRuleType) }
```

<p>The <code>ActivatedRule</code> object in an <a>UpdateWebACL</a> request specifies a <code>Rule</code> that you want to insert or delete, the priority of the <code>Rule</code> in the <code>WebACL</code>, and the action that you want AWS WAF to take when a web request matches the <code>Rule</code> (<code>ALLOW</code>, <code>BLOCK</code>, or <code>COUNT</code>).</p> <p>To specify whether to insert or delete a <code>Rule</code>, use the <code>Action</code> parameter in the <a>WebACLUpdate</a> data type.</p>

##### Instances
``` purescript
Newtype ActivatedRule _
Generic ActivatedRule _
Show ActivatedRule
Decode ActivatedRule
Encode ActivatedRule
```

#### `newActivatedRule`

``` purescript
newActivatedRule :: RulePriority -> ResourceId -> ActivatedRule
```

Constructs ActivatedRule from required parameters

#### `newActivatedRule'`

``` purescript
newActivatedRule' :: RulePriority -> ResourceId -> ({ "Priority" :: RulePriority, "RuleId" :: ResourceId, "Action" :: Maybe (WafAction), "OverrideAction" :: Maybe (WafOverrideAction), "Type" :: Maybe (WafRuleType) } -> { "Priority" :: RulePriority, "RuleId" :: ResourceId, "Action" :: Maybe (WafAction), "OverrideAction" :: Maybe (WafOverrideAction), "Type" :: Maybe (WafRuleType) }) -> ActivatedRule
```

Constructs ActivatedRule's fields from required parameters

#### `ActivatedRules`

``` purescript
newtype ActivatedRules
  = ActivatedRules (Array ActivatedRule)
```

##### Instances
``` purescript
Newtype ActivatedRules _
Generic ActivatedRules _
Show ActivatedRules
Decode ActivatedRules
Encode ActivatedRules
```

#### `AssociateWebACLRequest`

``` purescript
newtype AssociateWebACLRequest
  = AssociateWebACLRequest { "WebACLId" :: ResourceId, "ResourceArn" :: ResourceArn }
```

##### Instances
``` purescript
Newtype AssociateWebACLRequest _
Generic AssociateWebACLRequest _
Show AssociateWebACLRequest
Decode AssociateWebACLRequest
Encode AssociateWebACLRequest
```

#### `newAssociateWebACLRequest`

``` purescript
newAssociateWebACLRequest :: ResourceArn -> ResourceId -> AssociateWebACLRequest
```

Constructs AssociateWebACLRequest from required parameters

#### `newAssociateWebACLRequest'`

``` purescript
newAssociateWebACLRequest' :: ResourceArn -> ResourceId -> ({ "WebACLId" :: ResourceId, "ResourceArn" :: ResourceArn } -> { "WebACLId" :: ResourceId, "ResourceArn" :: ResourceArn }) -> AssociateWebACLRequest
```

Constructs AssociateWebACLRequest's fields from required parameters

#### `AssociateWebACLResponse`

``` purescript
newtype AssociateWebACLResponse
  = AssociateWebACLResponse NoArguments
```

##### Instances
``` purescript
Newtype AssociateWebACLResponse _
Generic AssociateWebACLResponse _
Show AssociateWebACLResponse
Decode AssociateWebACLResponse
Encode AssociateWebACLResponse
```

#### `ByteMatchSet`

``` purescript
newtype ByteMatchSet
  = ByteMatchSet { "ByteMatchSetId" :: ResourceId, "Name" :: Maybe (ResourceName), "ByteMatchTuples" :: ByteMatchTuples }
```

<p>In a <a>GetByteMatchSet</a> request, <code>ByteMatchSet</code> is a complex type that contains the <code>ByteMatchSetId</code> and <code>Name</code> of a <code>ByteMatchSet</code>, and the values that you specified when you updated the <code>ByteMatchSet</code>. </p> <p>A complex type that contains <code>ByteMatchTuple</code> objects, which specify the parts of web requests that you want AWS WAF to inspect and the values that you want AWS WAF to search for. If a <code>ByteMatchSet</code> contains more than one <code>ByteMatchTuple</code> object, a request needs to match the settings in only one <code>ByteMatchTuple</code> to be considered a match.</p>

##### Instances
``` purescript
Newtype ByteMatchSet _
Generic ByteMatchSet _
Show ByteMatchSet
Decode ByteMatchSet
Encode ByteMatchSet
```

#### `newByteMatchSet`

``` purescript
newByteMatchSet :: ResourceId -> ByteMatchTuples -> ByteMatchSet
```

Constructs ByteMatchSet from required parameters

#### `newByteMatchSet'`

``` purescript
newByteMatchSet' :: ResourceId -> ByteMatchTuples -> ({ "ByteMatchSetId" :: ResourceId, "Name" :: Maybe (ResourceName), "ByteMatchTuples" :: ByteMatchTuples } -> { "ByteMatchSetId" :: ResourceId, "Name" :: Maybe (ResourceName), "ByteMatchTuples" :: ByteMatchTuples }) -> ByteMatchSet
```

Constructs ByteMatchSet's fields from required parameters

#### `ByteMatchSetSummaries`

``` purescript
newtype ByteMatchSetSummaries
  = ByteMatchSetSummaries (Array ByteMatchSetSummary)
```

##### Instances
``` purescript
Newtype ByteMatchSetSummaries _
Generic ByteMatchSetSummaries _
Show ByteMatchSetSummaries
Decode ByteMatchSetSummaries
Encode ByteMatchSetSummaries
```

#### `ByteMatchSetSummary`

``` purescript
newtype ByteMatchSetSummary
  = ByteMatchSetSummary { "ByteMatchSetId" :: ResourceId, "Name" :: ResourceName }
```

<p>Returned by <a>ListByteMatchSets</a>. Each <code>ByteMatchSetSummary</code> object includes the <code>Name</code> and <code>ByteMatchSetId</code> for one <a>ByteMatchSet</a>.</p>

##### Instances
``` purescript
Newtype ByteMatchSetSummary _
Generic ByteMatchSetSummary _
Show ByteMatchSetSummary
Decode ByteMatchSetSummary
Encode ByteMatchSetSummary
```

#### `newByteMatchSetSummary`

``` purescript
newByteMatchSetSummary :: ResourceId -> ResourceName -> ByteMatchSetSummary
```

Constructs ByteMatchSetSummary from required parameters

#### `newByteMatchSetSummary'`

``` purescript
newByteMatchSetSummary' :: ResourceId -> ResourceName -> ({ "ByteMatchSetId" :: ResourceId, "Name" :: ResourceName } -> { "ByteMatchSetId" :: ResourceId, "Name" :: ResourceName }) -> ByteMatchSetSummary
```

Constructs ByteMatchSetSummary's fields from required parameters

#### `ByteMatchSetUpdate`

``` purescript
newtype ByteMatchSetUpdate
  = ByteMatchSetUpdate { "Action" :: ChangeAction, "ByteMatchTuple" :: ByteMatchTuple }
```

<p>In an <a>UpdateByteMatchSet</a> request, <code>ByteMatchSetUpdate</code> specifies whether to insert or delete a <a>ByteMatchTuple</a> and includes the settings for the <code>ByteMatchTuple</code>.</p>

##### Instances
``` purescript
Newtype ByteMatchSetUpdate _
Generic ByteMatchSetUpdate _
Show ByteMatchSetUpdate
Decode ByteMatchSetUpdate
Encode ByteMatchSetUpdate
```

#### `newByteMatchSetUpdate`

``` purescript
newByteMatchSetUpdate :: ChangeAction -> ByteMatchTuple -> ByteMatchSetUpdate
```

Constructs ByteMatchSetUpdate from required parameters

#### `newByteMatchSetUpdate'`

``` purescript
newByteMatchSetUpdate' :: ChangeAction -> ByteMatchTuple -> ({ "Action" :: ChangeAction, "ByteMatchTuple" :: ByteMatchTuple } -> { "Action" :: ChangeAction, "ByteMatchTuple" :: ByteMatchTuple }) -> ByteMatchSetUpdate
```

Constructs ByteMatchSetUpdate's fields from required parameters

#### `ByteMatchSetUpdates`

``` purescript
newtype ByteMatchSetUpdates
  = ByteMatchSetUpdates (Array ByteMatchSetUpdate)
```

##### Instances
``` purescript
Newtype ByteMatchSetUpdates _
Generic ByteMatchSetUpdates _
Show ByteMatchSetUpdates
Decode ByteMatchSetUpdates
Encode ByteMatchSetUpdates
```

#### `ByteMatchTargetString`

``` purescript
newtype ByteMatchTargetString
  = ByteMatchTargetString String
```

##### Instances
``` purescript
Newtype ByteMatchTargetString _
Generic ByteMatchTargetString _
Show ByteMatchTargetString
Decode ByteMatchTargetString
Encode ByteMatchTargetString
```

#### `ByteMatchTuple`

``` purescript
newtype ByteMatchTuple
  = ByteMatchTuple { "FieldToMatch" :: FieldToMatch, "TargetString" :: ByteMatchTargetString, "TextTransformation" :: TextTransformation, "PositionalConstraint" :: PositionalConstraint }
```

<p>The bytes (typically a string that corresponds with ASCII characters) that you want AWS WAF to search for in web requests, the location in requests that you want AWS WAF to search, and other settings.</p>

##### Instances
``` purescript
Newtype ByteMatchTuple _
Generic ByteMatchTuple _
Show ByteMatchTuple
Decode ByteMatchTuple
Encode ByteMatchTuple
```

#### `newByteMatchTuple`

``` purescript
newByteMatchTuple :: FieldToMatch -> PositionalConstraint -> ByteMatchTargetString -> TextTransformation -> ByteMatchTuple
```

Constructs ByteMatchTuple from required parameters

#### `newByteMatchTuple'`

``` purescript
newByteMatchTuple' :: FieldToMatch -> PositionalConstraint -> ByteMatchTargetString -> TextTransformation -> ({ "FieldToMatch" :: FieldToMatch, "TargetString" :: ByteMatchTargetString, "TextTransformation" :: TextTransformation, "PositionalConstraint" :: PositionalConstraint } -> { "FieldToMatch" :: FieldToMatch, "TargetString" :: ByteMatchTargetString, "TextTransformation" :: TextTransformation, "PositionalConstraint" :: PositionalConstraint }) -> ByteMatchTuple
```

Constructs ByteMatchTuple's fields from required parameters

#### `ByteMatchTuples`

``` purescript
newtype ByteMatchTuples
  = ByteMatchTuples (Array ByteMatchTuple)
```

##### Instances
``` purescript
Newtype ByteMatchTuples _
Generic ByteMatchTuples _
Show ByteMatchTuples
Decode ByteMatchTuples
Encode ByteMatchTuples
```

#### `ChangeAction`

``` purescript
newtype ChangeAction
  = ChangeAction String
```

##### Instances
``` purescript
Newtype ChangeAction _
Generic ChangeAction _
Show ChangeAction
Decode ChangeAction
Encode ChangeAction
```

#### `ChangeToken`

``` purescript
newtype ChangeToken
  = ChangeToken String
```

##### Instances
``` purescript
Newtype ChangeToken _
Generic ChangeToken _
Show ChangeToken
Decode ChangeToken
Encode ChangeToken
```

#### `ChangeTokenStatus`

``` purescript
newtype ChangeTokenStatus
  = ChangeTokenStatus String
```

##### Instances
``` purescript
Newtype ChangeTokenStatus _
Generic ChangeTokenStatus _
Show ChangeTokenStatus
Decode ChangeTokenStatus
Encode ChangeTokenStatus
```

#### `ComparisonOperator`

``` purescript
newtype ComparisonOperator
  = ComparisonOperator String
```

##### Instances
``` purescript
Newtype ComparisonOperator _
Generic ComparisonOperator _
Show ComparisonOperator
Decode ComparisonOperator
Encode ComparisonOperator
```

#### `Country`

``` purescript
newtype Country
  = Country String
```

##### Instances
``` purescript
Newtype Country _
Generic Country _
Show Country
Decode Country
Encode Country
```

#### `CreateByteMatchSetRequest`

``` purescript
newtype CreateByteMatchSetRequest
  = CreateByteMatchSetRequest { "Name" :: ResourceName, "ChangeToken" :: ChangeToken }
```

##### Instances
``` purescript
Newtype CreateByteMatchSetRequest _
Generic CreateByteMatchSetRequest _
Show CreateByteMatchSetRequest
Decode CreateByteMatchSetRequest
Encode CreateByteMatchSetRequest
```

#### `newCreateByteMatchSetRequest`

``` purescript
newCreateByteMatchSetRequest :: ChangeToken -> ResourceName -> CreateByteMatchSetRequest
```

Constructs CreateByteMatchSetRequest from required parameters

#### `newCreateByteMatchSetRequest'`

``` purescript
newCreateByteMatchSetRequest' :: ChangeToken -> ResourceName -> ({ "Name" :: ResourceName, "ChangeToken" :: ChangeToken } -> { "Name" :: ResourceName, "ChangeToken" :: ChangeToken }) -> CreateByteMatchSetRequest
```

Constructs CreateByteMatchSetRequest's fields from required parameters

#### `CreateByteMatchSetResponse`

``` purescript
newtype CreateByteMatchSetResponse
  = CreateByteMatchSetResponse { "ByteMatchSet" :: Maybe (ByteMatchSet), "ChangeToken" :: Maybe (ChangeToken) }
```

##### Instances
``` purescript
Newtype CreateByteMatchSetResponse _
Generic CreateByteMatchSetResponse _
Show CreateByteMatchSetResponse
Decode CreateByteMatchSetResponse
Encode CreateByteMatchSetResponse
```

#### `newCreateByteMatchSetResponse`

``` purescript
newCreateByteMatchSetResponse :: CreateByteMatchSetResponse
```

Constructs CreateByteMatchSetResponse from required parameters

#### `newCreateByteMatchSetResponse'`

``` purescript
newCreateByteMatchSetResponse' :: ({ "ByteMatchSet" :: Maybe (ByteMatchSet), "ChangeToken" :: Maybe (ChangeToken) } -> { "ByteMatchSet" :: Maybe (ByteMatchSet), "ChangeToken" :: Maybe (ChangeToken) }) -> CreateByteMatchSetResponse
```

Constructs CreateByteMatchSetResponse's fields from required parameters

#### `CreateGeoMatchSetRequest`

``` purescript
newtype CreateGeoMatchSetRequest
  = CreateGeoMatchSetRequest { "Name" :: ResourceName, "ChangeToken" :: ChangeToken }
```

##### Instances
``` purescript
Newtype CreateGeoMatchSetRequest _
Generic CreateGeoMatchSetRequest _
Show CreateGeoMatchSetRequest
Decode CreateGeoMatchSetRequest
Encode CreateGeoMatchSetRequest
```

#### `newCreateGeoMatchSetRequest`

``` purescript
newCreateGeoMatchSetRequest :: ChangeToken -> ResourceName -> CreateGeoMatchSetRequest
```

Constructs CreateGeoMatchSetRequest from required parameters

#### `newCreateGeoMatchSetRequest'`

``` purescript
newCreateGeoMatchSetRequest' :: ChangeToken -> ResourceName -> ({ "Name" :: ResourceName, "ChangeToken" :: ChangeToken } -> { "Name" :: ResourceName, "ChangeToken" :: ChangeToken }) -> CreateGeoMatchSetRequest
```

Constructs CreateGeoMatchSetRequest's fields from required parameters

#### `CreateGeoMatchSetResponse`

``` purescript
newtype CreateGeoMatchSetResponse
  = CreateGeoMatchSetResponse { "GeoMatchSet" :: Maybe (GeoMatchSet), "ChangeToken" :: Maybe (ChangeToken) }
```

##### Instances
``` purescript
Newtype CreateGeoMatchSetResponse _
Generic CreateGeoMatchSetResponse _
Show CreateGeoMatchSetResponse
Decode CreateGeoMatchSetResponse
Encode CreateGeoMatchSetResponse
```

#### `newCreateGeoMatchSetResponse`

``` purescript
newCreateGeoMatchSetResponse :: CreateGeoMatchSetResponse
```

Constructs CreateGeoMatchSetResponse from required parameters

#### `newCreateGeoMatchSetResponse'`

``` purescript
newCreateGeoMatchSetResponse' :: ({ "GeoMatchSet" :: Maybe (GeoMatchSet), "ChangeToken" :: Maybe (ChangeToken) } -> { "GeoMatchSet" :: Maybe (GeoMatchSet), "ChangeToken" :: Maybe (ChangeToken) }) -> CreateGeoMatchSetResponse
```

Constructs CreateGeoMatchSetResponse's fields from required parameters

#### `CreateIPSetRequest`

``` purescript
newtype CreateIPSetRequest
  = CreateIPSetRequest { "Name" :: ResourceName, "ChangeToken" :: ChangeToken }
```

##### Instances
``` purescript
Newtype CreateIPSetRequest _
Generic CreateIPSetRequest _
Show CreateIPSetRequest
Decode CreateIPSetRequest
Encode CreateIPSetRequest
```

#### `newCreateIPSetRequest`

``` purescript
newCreateIPSetRequest :: ChangeToken -> ResourceName -> CreateIPSetRequest
```

Constructs CreateIPSetRequest from required parameters

#### `newCreateIPSetRequest'`

``` purescript
newCreateIPSetRequest' :: ChangeToken -> ResourceName -> ({ "Name" :: ResourceName, "ChangeToken" :: ChangeToken } -> { "Name" :: ResourceName, "ChangeToken" :: ChangeToken }) -> CreateIPSetRequest
```

Constructs CreateIPSetRequest's fields from required parameters

#### `CreateIPSetResponse`

``` purescript
newtype CreateIPSetResponse
  = CreateIPSetResponse { "IPSet" :: Maybe (IPSet), "ChangeToken" :: Maybe (ChangeToken) }
```

##### Instances
``` purescript
Newtype CreateIPSetResponse _
Generic CreateIPSetResponse _
Show CreateIPSetResponse
Decode CreateIPSetResponse
Encode CreateIPSetResponse
```

#### `newCreateIPSetResponse`

``` purescript
newCreateIPSetResponse :: CreateIPSetResponse
```

Constructs CreateIPSetResponse from required parameters

#### `newCreateIPSetResponse'`

``` purescript
newCreateIPSetResponse' :: ({ "IPSet" :: Maybe (IPSet), "ChangeToken" :: Maybe (ChangeToken) } -> { "IPSet" :: Maybe (IPSet), "ChangeToken" :: Maybe (ChangeToken) }) -> CreateIPSetResponse
```

Constructs CreateIPSetResponse's fields from required parameters

#### `CreateRateBasedRuleRequest`

``` purescript
newtype CreateRateBasedRuleRequest
  = CreateRateBasedRuleRequest { "Name" :: ResourceName, "MetricName" :: MetricName, "RateKey" :: RateKey, "RateLimit" :: RateLimit, "ChangeToken" :: ChangeToken }
```

##### Instances
``` purescript
Newtype CreateRateBasedRuleRequest _
Generic CreateRateBasedRuleRequest _
Show CreateRateBasedRuleRequest
Decode CreateRateBasedRuleRequest
Encode CreateRateBasedRuleRequest
```

#### `newCreateRateBasedRuleRequest`

``` purescript
newCreateRateBasedRuleRequest :: ChangeToken -> MetricName -> ResourceName -> RateKey -> RateLimit -> CreateRateBasedRuleRequest
```

Constructs CreateRateBasedRuleRequest from required parameters

#### `newCreateRateBasedRuleRequest'`

``` purescript
newCreateRateBasedRuleRequest' :: ChangeToken -> MetricName -> ResourceName -> RateKey -> RateLimit -> ({ "Name" :: ResourceName, "MetricName" :: MetricName, "RateKey" :: RateKey, "RateLimit" :: RateLimit, "ChangeToken" :: ChangeToken } -> { "Name" :: ResourceName, "MetricName" :: MetricName, "RateKey" :: RateKey, "RateLimit" :: RateLimit, "ChangeToken" :: ChangeToken }) -> CreateRateBasedRuleRequest
```

Constructs CreateRateBasedRuleRequest's fields from required parameters

#### `CreateRateBasedRuleResponse`

``` purescript
newtype CreateRateBasedRuleResponse
  = CreateRateBasedRuleResponse { "Rule" :: Maybe (RateBasedRule), "ChangeToken" :: Maybe (ChangeToken) }
```

##### Instances
``` purescript
Newtype CreateRateBasedRuleResponse _
Generic CreateRateBasedRuleResponse _
Show CreateRateBasedRuleResponse
Decode CreateRateBasedRuleResponse
Encode CreateRateBasedRuleResponse
```

#### `newCreateRateBasedRuleResponse`

``` purescript
newCreateRateBasedRuleResponse :: CreateRateBasedRuleResponse
```

Constructs CreateRateBasedRuleResponse from required parameters

#### `newCreateRateBasedRuleResponse'`

``` purescript
newCreateRateBasedRuleResponse' :: ({ "Rule" :: Maybe (RateBasedRule), "ChangeToken" :: Maybe (ChangeToken) } -> { "Rule" :: Maybe (RateBasedRule), "ChangeToken" :: Maybe (ChangeToken) }) -> CreateRateBasedRuleResponse
```

Constructs CreateRateBasedRuleResponse's fields from required parameters

#### `CreateRegexMatchSetRequest`

``` purescript
newtype CreateRegexMatchSetRequest
  = CreateRegexMatchSetRequest { "Name" :: ResourceName, "ChangeToken" :: ChangeToken }
```

##### Instances
``` purescript
Newtype CreateRegexMatchSetRequest _
Generic CreateRegexMatchSetRequest _
Show CreateRegexMatchSetRequest
Decode CreateRegexMatchSetRequest
Encode CreateRegexMatchSetRequest
```

#### `newCreateRegexMatchSetRequest`

``` purescript
newCreateRegexMatchSetRequest :: ChangeToken -> ResourceName -> CreateRegexMatchSetRequest
```

Constructs CreateRegexMatchSetRequest from required parameters

#### `newCreateRegexMatchSetRequest'`

``` purescript
newCreateRegexMatchSetRequest' :: ChangeToken -> ResourceName -> ({ "Name" :: ResourceName, "ChangeToken" :: ChangeToken } -> { "Name" :: ResourceName, "ChangeToken" :: ChangeToken }) -> CreateRegexMatchSetRequest
```

Constructs CreateRegexMatchSetRequest's fields from required parameters

#### `CreateRegexMatchSetResponse`

``` purescript
newtype CreateRegexMatchSetResponse
  = CreateRegexMatchSetResponse { "RegexMatchSet" :: Maybe (RegexMatchSet), "ChangeToken" :: Maybe (ChangeToken) }
```

##### Instances
``` purescript
Newtype CreateRegexMatchSetResponse _
Generic CreateRegexMatchSetResponse _
Show CreateRegexMatchSetResponse
Decode CreateRegexMatchSetResponse
Encode CreateRegexMatchSetResponse
```

#### `newCreateRegexMatchSetResponse`

``` purescript
newCreateRegexMatchSetResponse :: CreateRegexMatchSetResponse
```

Constructs CreateRegexMatchSetResponse from required parameters

#### `newCreateRegexMatchSetResponse'`

``` purescript
newCreateRegexMatchSetResponse' :: ({ "RegexMatchSet" :: Maybe (RegexMatchSet), "ChangeToken" :: Maybe (ChangeToken) } -> { "RegexMatchSet" :: Maybe (RegexMatchSet), "ChangeToken" :: Maybe (ChangeToken) }) -> CreateRegexMatchSetResponse
```

Constructs CreateRegexMatchSetResponse's fields from required parameters

#### `CreateRegexPatternSetRequest`

``` purescript
newtype CreateRegexPatternSetRequest
  = CreateRegexPatternSetRequest { "Name" :: ResourceName, "ChangeToken" :: ChangeToken }
```

##### Instances
``` purescript
Newtype CreateRegexPatternSetRequest _
Generic CreateRegexPatternSetRequest _
Show CreateRegexPatternSetRequest
Decode CreateRegexPatternSetRequest
Encode CreateRegexPatternSetRequest
```

#### `newCreateRegexPatternSetRequest`

``` purescript
newCreateRegexPatternSetRequest :: ChangeToken -> ResourceName -> CreateRegexPatternSetRequest
```

Constructs CreateRegexPatternSetRequest from required parameters

#### `newCreateRegexPatternSetRequest'`

``` purescript
newCreateRegexPatternSetRequest' :: ChangeToken -> ResourceName -> ({ "Name" :: ResourceName, "ChangeToken" :: ChangeToken } -> { "Name" :: ResourceName, "ChangeToken" :: ChangeToken }) -> CreateRegexPatternSetRequest
```

Constructs CreateRegexPatternSetRequest's fields from required parameters

#### `CreateRegexPatternSetResponse`

``` purescript
newtype CreateRegexPatternSetResponse
  = CreateRegexPatternSetResponse { "RegexPatternSet" :: Maybe (RegexPatternSet), "ChangeToken" :: Maybe (ChangeToken) }
```

##### Instances
``` purescript
Newtype CreateRegexPatternSetResponse _
Generic CreateRegexPatternSetResponse _
Show CreateRegexPatternSetResponse
Decode CreateRegexPatternSetResponse
Encode CreateRegexPatternSetResponse
```

#### `newCreateRegexPatternSetResponse`

``` purescript
newCreateRegexPatternSetResponse :: CreateRegexPatternSetResponse
```

Constructs CreateRegexPatternSetResponse from required parameters

#### `newCreateRegexPatternSetResponse'`

``` purescript
newCreateRegexPatternSetResponse' :: ({ "RegexPatternSet" :: Maybe (RegexPatternSet), "ChangeToken" :: Maybe (ChangeToken) } -> { "RegexPatternSet" :: Maybe (RegexPatternSet), "ChangeToken" :: Maybe (ChangeToken) }) -> CreateRegexPatternSetResponse
```

Constructs CreateRegexPatternSetResponse's fields from required parameters

#### `CreateRuleGroupRequest`

``` purescript
newtype CreateRuleGroupRequest
  = CreateRuleGroupRequest { "Name" :: ResourceName, "MetricName" :: MetricName, "ChangeToken" :: ChangeToken }
```

##### Instances
``` purescript
Newtype CreateRuleGroupRequest _
Generic CreateRuleGroupRequest _
Show CreateRuleGroupRequest
Decode CreateRuleGroupRequest
Encode CreateRuleGroupRequest
```

#### `newCreateRuleGroupRequest`

``` purescript
newCreateRuleGroupRequest :: ChangeToken -> MetricName -> ResourceName -> CreateRuleGroupRequest
```

Constructs CreateRuleGroupRequest from required parameters

#### `newCreateRuleGroupRequest'`

``` purescript
newCreateRuleGroupRequest' :: ChangeToken -> MetricName -> ResourceName -> ({ "Name" :: ResourceName, "MetricName" :: MetricName, "ChangeToken" :: ChangeToken } -> { "Name" :: ResourceName, "MetricName" :: MetricName, "ChangeToken" :: ChangeToken }) -> CreateRuleGroupRequest
```

Constructs CreateRuleGroupRequest's fields from required parameters

#### `CreateRuleGroupResponse`

``` purescript
newtype CreateRuleGroupResponse
  = CreateRuleGroupResponse { "RuleGroup" :: Maybe (RuleGroup), "ChangeToken" :: Maybe (ChangeToken) }
```

##### Instances
``` purescript
Newtype CreateRuleGroupResponse _
Generic CreateRuleGroupResponse _
Show CreateRuleGroupResponse
Decode CreateRuleGroupResponse
Encode CreateRuleGroupResponse
```

#### `newCreateRuleGroupResponse`

``` purescript
newCreateRuleGroupResponse :: CreateRuleGroupResponse
```

Constructs CreateRuleGroupResponse from required parameters

#### `newCreateRuleGroupResponse'`

``` purescript
newCreateRuleGroupResponse' :: ({ "RuleGroup" :: Maybe (RuleGroup), "ChangeToken" :: Maybe (ChangeToken) } -> { "RuleGroup" :: Maybe (RuleGroup), "ChangeToken" :: Maybe (ChangeToken) }) -> CreateRuleGroupResponse
```

Constructs CreateRuleGroupResponse's fields from required parameters

#### `CreateRuleRequest`

``` purescript
newtype CreateRuleRequest
  = CreateRuleRequest { "Name" :: ResourceName, "MetricName" :: MetricName, "ChangeToken" :: ChangeToken }
```

##### Instances
``` purescript
Newtype CreateRuleRequest _
Generic CreateRuleRequest _
Show CreateRuleRequest
Decode CreateRuleRequest
Encode CreateRuleRequest
```

#### `newCreateRuleRequest`

``` purescript
newCreateRuleRequest :: ChangeToken -> MetricName -> ResourceName -> CreateRuleRequest
```

Constructs CreateRuleRequest from required parameters

#### `newCreateRuleRequest'`

``` purescript
newCreateRuleRequest' :: ChangeToken -> MetricName -> ResourceName -> ({ "Name" :: ResourceName, "MetricName" :: MetricName, "ChangeToken" :: ChangeToken } -> { "Name" :: ResourceName, "MetricName" :: MetricName, "ChangeToken" :: ChangeToken }) -> CreateRuleRequest
```

Constructs CreateRuleRequest's fields from required parameters

#### `CreateRuleResponse`

``` purescript
newtype CreateRuleResponse
  = CreateRuleResponse { "Rule" :: Maybe (Rule), "ChangeToken" :: Maybe (ChangeToken) }
```

##### Instances
``` purescript
Newtype CreateRuleResponse _
Generic CreateRuleResponse _
Show CreateRuleResponse
Decode CreateRuleResponse
Encode CreateRuleResponse
```

#### `newCreateRuleResponse`

``` purescript
newCreateRuleResponse :: CreateRuleResponse
```

Constructs CreateRuleResponse from required parameters

#### `newCreateRuleResponse'`

``` purescript
newCreateRuleResponse' :: ({ "Rule" :: Maybe (Rule), "ChangeToken" :: Maybe (ChangeToken) } -> { "Rule" :: Maybe (Rule), "ChangeToken" :: Maybe (ChangeToken) }) -> CreateRuleResponse
```

Constructs CreateRuleResponse's fields from required parameters

#### `CreateSizeConstraintSetRequest`

``` purescript
newtype CreateSizeConstraintSetRequest
  = CreateSizeConstraintSetRequest { "Name" :: ResourceName, "ChangeToken" :: ChangeToken }
```

##### Instances
``` purescript
Newtype CreateSizeConstraintSetRequest _
Generic CreateSizeConstraintSetRequest _
Show CreateSizeConstraintSetRequest
Decode CreateSizeConstraintSetRequest
Encode CreateSizeConstraintSetRequest
```

#### `newCreateSizeConstraintSetRequest`

``` purescript
newCreateSizeConstraintSetRequest :: ChangeToken -> ResourceName -> CreateSizeConstraintSetRequest
```

Constructs CreateSizeConstraintSetRequest from required parameters

#### `newCreateSizeConstraintSetRequest'`

``` purescript
newCreateSizeConstraintSetRequest' :: ChangeToken -> ResourceName -> ({ "Name" :: ResourceName, "ChangeToken" :: ChangeToken } -> { "Name" :: ResourceName, "ChangeToken" :: ChangeToken }) -> CreateSizeConstraintSetRequest
```

Constructs CreateSizeConstraintSetRequest's fields from required parameters

#### `CreateSizeConstraintSetResponse`

``` purescript
newtype CreateSizeConstraintSetResponse
  = CreateSizeConstraintSetResponse { "SizeConstraintSet" :: Maybe (SizeConstraintSet), "ChangeToken" :: Maybe (ChangeToken) }
```

##### Instances
``` purescript
Newtype CreateSizeConstraintSetResponse _
Generic CreateSizeConstraintSetResponse _
Show CreateSizeConstraintSetResponse
Decode CreateSizeConstraintSetResponse
Encode CreateSizeConstraintSetResponse
```

#### `newCreateSizeConstraintSetResponse`

``` purescript
newCreateSizeConstraintSetResponse :: CreateSizeConstraintSetResponse
```

Constructs CreateSizeConstraintSetResponse from required parameters

#### `newCreateSizeConstraintSetResponse'`

``` purescript
newCreateSizeConstraintSetResponse' :: ({ "SizeConstraintSet" :: Maybe (SizeConstraintSet), "ChangeToken" :: Maybe (ChangeToken) } -> { "SizeConstraintSet" :: Maybe (SizeConstraintSet), "ChangeToken" :: Maybe (ChangeToken) }) -> CreateSizeConstraintSetResponse
```

Constructs CreateSizeConstraintSetResponse's fields from required parameters

#### `CreateSqlInjectionMatchSetRequest`

``` purescript
newtype CreateSqlInjectionMatchSetRequest
  = CreateSqlInjectionMatchSetRequest { "Name" :: ResourceName, "ChangeToken" :: ChangeToken }
```

<p>A request to create a <a>SqlInjectionMatchSet</a>.</p>

##### Instances
``` purescript
Newtype CreateSqlInjectionMatchSetRequest _
Generic CreateSqlInjectionMatchSetRequest _
Show CreateSqlInjectionMatchSetRequest
Decode CreateSqlInjectionMatchSetRequest
Encode CreateSqlInjectionMatchSetRequest
```

#### `newCreateSqlInjectionMatchSetRequest`

``` purescript
newCreateSqlInjectionMatchSetRequest :: ChangeToken -> ResourceName -> CreateSqlInjectionMatchSetRequest
```

Constructs CreateSqlInjectionMatchSetRequest from required parameters

#### `newCreateSqlInjectionMatchSetRequest'`

``` purescript
newCreateSqlInjectionMatchSetRequest' :: ChangeToken -> ResourceName -> ({ "Name" :: ResourceName, "ChangeToken" :: ChangeToken } -> { "Name" :: ResourceName, "ChangeToken" :: ChangeToken }) -> CreateSqlInjectionMatchSetRequest
```

Constructs CreateSqlInjectionMatchSetRequest's fields from required parameters

#### `CreateSqlInjectionMatchSetResponse`

``` purescript
newtype CreateSqlInjectionMatchSetResponse
  = CreateSqlInjectionMatchSetResponse { "SqlInjectionMatchSet" :: Maybe (SqlInjectionMatchSet), "ChangeToken" :: Maybe (ChangeToken) }
```

<p>The response to a <code>CreateSqlInjectionMatchSet</code> request.</p>

##### Instances
``` purescript
Newtype CreateSqlInjectionMatchSetResponse _
Generic CreateSqlInjectionMatchSetResponse _
Show CreateSqlInjectionMatchSetResponse
Decode CreateSqlInjectionMatchSetResponse
Encode CreateSqlInjectionMatchSetResponse
```

#### `newCreateSqlInjectionMatchSetResponse`

``` purescript
newCreateSqlInjectionMatchSetResponse :: CreateSqlInjectionMatchSetResponse
```

Constructs CreateSqlInjectionMatchSetResponse from required parameters

#### `newCreateSqlInjectionMatchSetResponse'`

``` purescript
newCreateSqlInjectionMatchSetResponse' :: ({ "SqlInjectionMatchSet" :: Maybe (SqlInjectionMatchSet), "ChangeToken" :: Maybe (ChangeToken) } -> { "SqlInjectionMatchSet" :: Maybe (SqlInjectionMatchSet), "ChangeToken" :: Maybe (ChangeToken) }) -> CreateSqlInjectionMatchSetResponse
```

Constructs CreateSqlInjectionMatchSetResponse's fields from required parameters

#### `CreateWebACLRequest`

``` purescript
newtype CreateWebACLRequest
  = CreateWebACLRequest { "Name" :: ResourceName, "MetricName" :: MetricName, "DefaultAction" :: WafAction, "ChangeToken" :: ChangeToken }
```

##### Instances
``` purescript
Newtype CreateWebACLRequest _
Generic CreateWebACLRequest _
Show CreateWebACLRequest
Decode CreateWebACLRequest
Encode CreateWebACLRequest
```

#### `newCreateWebACLRequest`

``` purescript
newCreateWebACLRequest :: ChangeToken -> WafAction -> MetricName -> ResourceName -> CreateWebACLRequest
```

Constructs CreateWebACLRequest from required parameters

#### `newCreateWebACLRequest'`

``` purescript
newCreateWebACLRequest' :: ChangeToken -> WafAction -> MetricName -> ResourceName -> ({ "Name" :: ResourceName, "MetricName" :: MetricName, "DefaultAction" :: WafAction, "ChangeToken" :: ChangeToken } -> { "Name" :: ResourceName, "MetricName" :: MetricName, "DefaultAction" :: WafAction, "ChangeToken" :: ChangeToken }) -> CreateWebACLRequest
```

Constructs CreateWebACLRequest's fields from required parameters

#### `CreateWebACLResponse`

``` purescript
newtype CreateWebACLResponse
  = CreateWebACLResponse { "WebACL" :: Maybe (WebACL), "ChangeToken" :: Maybe (ChangeToken) }
```

##### Instances
``` purescript
Newtype CreateWebACLResponse _
Generic CreateWebACLResponse _
Show CreateWebACLResponse
Decode CreateWebACLResponse
Encode CreateWebACLResponse
```

#### `newCreateWebACLResponse`

``` purescript
newCreateWebACLResponse :: CreateWebACLResponse
```

Constructs CreateWebACLResponse from required parameters

#### `newCreateWebACLResponse'`

``` purescript
newCreateWebACLResponse' :: ({ "WebACL" :: Maybe (WebACL), "ChangeToken" :: Maybe (ChangeToken) } -> { "WebACL" :: Maybe (WebACL), "ChangeToken" :: Maybe (ChangeToken) }) -> CreateWebACLResponse
```

Constructs CreateWebACLResponse's fields from required parameters

#### `CreateXssMatchSetRequest`

``` purescript
newtype CreateXssMatchSetRequest
  = CreateXssMatchSetRequest { "Name" :: ResourceName, "ChangeToken" :: ChangeToken }
```

<p>A request to create an <a>XssMatchSet</a>.</p>

##### Instances
``` purescript
Newtype CreateXssMatchSetRequest _
Generic CreateXssMatchSetRequest _
Show CreateXssMatchSetRequest
Decode CreateXssMatchSetRequest
Encode CreateXssMatchSetRequest
```

#### `newCreateXssMatchSetRequest`

``` purescript
newCreateXssMatchSetRequest :: ChangeToken -> ResourceName -> CreateXssMatchSetRequest
```

Constructs CreateXssMatchSetRequest from required parameters

#### `newCreateXssMatchSetRequest'`

``` purescript
newCreateXssMatchSetRequest' :: ChangeToken -> ResourceName -> ({ "Name" :: ResourceName, "ChangeToken" :: ChangeToken } -> { "Name" :: ResourceName, "ChangeToken" :: ChangeToken }) -> CreateXssMatchSetRequest
```

Constructs CreateXssMatchSetRequest's fields from required parameters

#### `CreateXssMatchSetResponse`

``` purescript
newtype CreateXssMatchSetResponse
  = CreateXssMatchSetResponse { "XssMatchSet" :: Maybe (XssMatchSet), "ChangeToken" :: Maybe (ChangeToken) }
```

<p>The response to a <code>CreateXssMatchSet</code> request.</p>

##### Instances
``` purescript
Newtype CreateXssMatchSetResponse _
Generic CreateXssMatchSetResponse _
Show CreateXssMatchSetResponse
Decode CreateXssMatchSetResponse
Encode CreateXssMatchSetResponse
```

#### `newCreateXssMatchSetResponse`

``` purescript
newCreateXssMatchSetResponse :: CreateXssMatchSetResponse
```

Constructs CreateXssMatchSetResponse from required parameters

#### `newCreateXssMatchSetResponse'`

``` purescript
newCreateXssMatchSetResponse' :: ({ "XssMatchSet" :: Maybe (XssMatchSet), "ChangeToken" :: Maybe (ChangeToken) } -> { "XssMatchSet" :: Maybe (XssMatchSet), "ChangeToken" :: Maybe (ChangeToken) }) -> CreateXssMatchSetResponse
```

Constructs CreateXssMatchSetResponse's fields from required parameters

#### `DeleteByteMatchSetRequest`

``` purescript
newtype DeleteByteMatchSetRequest
  = DeleteByteMatchSetRequest { "ByteMatchSetId" :: ResourceId, "ChangeToken" :: ChangeToken }
```

##### Instances
``` purescript
Newtype DeleteByteMatchSetRequest _
Generic DeleteByteMatchSetRequest _
Show DeleteByteMatchSetRequest
Decode DeleteByteMatchSetRequest
Encode DeleteByteMatchSetRequest
```

#### `newDeleteByteMatchSetRequest`

``` purescript
newDeleteByteMatchSetRequest :: ResourceId -> ChangeToken -> DeleteByteMatchSetRequest
```

Constructs DeleteByteMatchSetRequest from required parameters

#### `newDeleteByteMatchSetRequest'`

``` purescript
newDeleteByteMatchSetRequest' :: ResourceId -> ChangeToken -> ({ "ByteMatchSetId" :: ResourceId, "ChangeToken" :: ChangeToken } -> { "ByteMatchSetId" :: ResourceId, "ChangeToken" :: ChangeToken }) -> DeleteByteMatchSetRequest
```

Constructs DeleteByteMatchSetRequest's fields from required parameters

#### `DeleteByteMatchSetResponse`

``` purescript
newtype DeleteByteMatchSetResponse
  = DeleteByteMatchSetResponse { "ChangeToken" :: Maybe (ChangeToken) }
```

##### Instances
``` purescript
Newtype DeleteByteMatchSetResponse _
Generic DeleteByteMatchSetResponse _
Show DeleteByteMatchSetResponse
Decode DeleteByteMatchSetResponse
Encode DeleteByteMatchSetResponse
```

#### `newDeleteByteMatchSetResponse`

``` purescript
newDeleteByteMatchSetResponse :: DeleteByteMatchSetResponse
```

Constructs DeleteByteMatchSetResponse from required parameters

#### `newDeleteByteMatchSetResponse'`

``` purescript
newDeleteByteMatchSetResponse' :: ({ "ChangeToken" :: Maybe (ChangeToken) } -> { "ChangeToken" :: Maybe (ChangeToken) }) -> DeleteByteMatchSetResponse
```

Constructs DeleteByteMatchSetResponse's fields from required parameters

#### `DeleteGeoMatchSetRequest`

``` purescript
newtype DeleteGeoMatchSetRequest
  = DeleteGeoMatchSetRequest { "GeoMatchSetId" :: ResourceId, "ChangeToken" :: ChangeToken }
```

##### Instances
``` purescript
Newtype DeleteGeoMatchSetRequest _
Generic DeleteGeoMatchSetRequest _
Show DeleteGeoMatchSetRequest
Decode DeleteGeoMatchSetRequest
Encode DeleteGeoMatchSetRequest
```

#### `newDeleteGeoMatchSetRequest`

``` purescript
newDeleteGeoMatchSetRequest :: ChangeToken -> ResourceId -> DeleteGeoMatchSetRequest
```

Constructs DeleteGeoMatchSetRequest from required parameters

#### `newDeleteGeoMatchSetRequest'`

``` purescript
newDeleteGeoMatchSetRequest' :: ChangeToken -> ResourceId -> ({ "GeoMatchSetId" :: ResourceId, "ChangeToken" :: ChangeToken } -> { "GeoMatchSetId" :: ResourceId, "ChangeToken" :: ChangeToken }) -> DeleteGeoMatchSetRequest
```

Constructs DeleteGeoMatchSetRequest's fields from required parameters

#### `DeleteGeoMatchSetResponse`

``` purescript
newtype DeleteGeoMatchSetResponse
  = DeleteGeoMatchSetResponse { "ChangeToken" :: Maybe (ChangeToken) }
```

##### Instances
``` purescript
Newtype DeleteGeoMatchSetResponse _
Generic DeleteGeoMatchSetResponse _
Show DeleteGeoMatchSetResponse
Decode DeleteGeoMatchSetResponse
Encode DeleteGeoMatchSetResponse
```

#### `newDeleteGeoMatchSetResponse`

``` purescript
newDeleteGeoMatchSetResponse :: DeleteGeoMatchSetResponse
```

Constructs DeleteGeoMatchSetResponse from required parameters

#### `newDeleteGeoMatchSetResponse'`

``` purescript
newDeleteGeoMatchSetResponse' :: ({ "ChangeToken" :: Maybe (ChangeToken) } -> { "ChangeToken" :: Maybe (ChangeToken) }) -> DeleteGeoMatchSetResponse
```

Constructs DeleteGeoMatchSetResponse's fields from required parameters

#### `DeleteIPSetRequest`

``` purescript
newtype DeleteIPSetRequest
  = DeleteIPSetRequest { "IPSetId" :: ResourceId, "ChangeToken" :: ChangeToken }
```

##### Instances
``` purescript
Newtype DeleteIPSetRequest _
Generic DeleteIPSetRequest _
Show DeleteIPSetRequest
Decode DeleteIPSetRequest
Encode DeleteIPSetRequest
```

#### `newDeleteIPSetRequest`

``` purescript
newDeleteIPSetRequest :: ChangeToken -> ResourceId -> DeleteIPSetRequest
```

Constructs DeleteIPSetRequest from required parameters

#### `newDeleteIPSetRequest'`

``` purescript
newDeleteIPSetRequest' :: ChangeToken -> ResourceId -> ({ "IPSetId" :: ResourceId, "ChangeToken" :: ChangeToken } -> { "IPSetId" :: ResourceId, "ChangeToken" :: ChangeToken }) -> DeleteIPSetRequest
```

Constructs DeleteIPSetRequest's fields from required parameters

#### `DeleteIPSetResponse`

``` purescript
newtype DeleteIPSetResponse
  = DeleteIPSetResponse { "ChangeToken" :: Maybe (ChangeToken) }
```

##### Instances
``` purescript
Newtype DeleteIPSetResponse _
Generic DeleteIPSetResponse _
Show DeleteIPSetResponse
Decode DeleteIPSetResponse
Encode DeleteIPSetResponse
```

#### `newDeleteIPSetResponse`

``` purescript
newDeleteIPSetResponse :: DeleteIPSetResponse
```

Constructs DeleteIPSetResponse from required parameters

#### `newDeleteIPSetResponse'`

``` purescript
newDeleteIPSetResponse' :: ({ "ChangeToken" :: Maybe (ChangeToken) } -> { "ChangeToken" :: Maybe (ChangeToken) }) -> DeleteIPSetResponse
```

Constructs DeleteIPSetResponse's fields from required parameters

#### `DeletePermissionPolicyRequest`

``` purescript
newtype DeletePermissionPolicyRequest
  = DeletePermissionPolicyRequest { "ResourceArn" :: ResourceArn }
```

##### Instances
``` purescript
Newtype DeletePermissionPolicyRequest _
Generic DeletePermissionPolicyRequest _
Show DeletePermissionPolicyRequest
Decode DeletePermissionPolicyRequest
Encode DeletePermissionPolicyRequest
```

#### `newDeletePermissionPolicyRequest`

``` purescript
newDeletePermissionPolicyRequest :: ResourceArn -> DeletePermissionPolicyRequest
```

Constructs DeletePermissionPolicyRequest from required parameters

#### `newDeletePermissionPolicyRequest'`

``` purescript
newDeletePermissionPolicyRequest' :: ResourceArn -> ({ "ResourceArn" :: ResourceArn } -> { "ResourceArn" :: ResourceArn }) -> DeletePermissionPolicyRequest
```

Constructs DeletePermissionPolicyRequest's fields from required parameters

#### `DeletePermissionPolicyResponse`

``` purescript
newtype DeletePermissionPolicyResponse
  = DeletePermissionPolicyResponse NoArguments
```

##### Instances
``` purescript
Newtype DeletePermissionPolicyResponse _
Generic DeletePermissionPolicyResponse _
Show DeletePermissionPolicyResponse
Decode DeletePermissionPolicyResponse
Encode DeletePermissionPolicyResponse
```

#### `DeleteRateBasedRuleRequest`

``` purescript
newtype DeleteRateBasedRuleRequest
  = DeleteRateBasedRuleRequest { "RuleId" :: ResourceId, "ChangeToken" :: ChangeToken }
```

##### Instances
``` purescript
Newtype DeleteRateBasedRuleRequest _
Generic DeleteRateBasedRuleRequest _
Show DeleteRateBasedRuleRequest
Decode DeleteRateBasedRuleRequest
Encode DeleteRateBasedRuleRequest
```

#### `newDeleteRateBasedRuleRequest`

``` purescript
newDeleteRateBasedRuleRequest :: ChangeToken -> ResourceId -> DeleteRateBasedRuleRequest
```

Constructs DeleteRateBasedRuleRequest from required parameters

#### `newDeleteRateBasedRuleRequest'`

``` purescript
newDeleteRateBasedRuleRequest' :: ChangeToken -> ResourceId -> ({ "RuleId" :: ResourceId, "ChangeToken" :: ChangeToken } -> { "RuleId" :: ResourceId, "ChangeToken" :: ChangeToken }) -> DeleteRateBasedRuleRequest
```

Constructs DeleteRateBasedRuleRequest's fields from required parameters

#### `DeleteRateBasedRuleResponse`

``` purescript
newtype DeleteRateBasedRuleResponse
  = DeleteRateBasedRuleResponse { "ChangeToken" :: Maybe (ChangeToken) }
```

##### Instances
``` purescript
Newtype DeleteRateBasedRuleResponse _
Generic DeleteRateBasedRuleResponse _
Show DeleteRateBasedRuleResponse
Decode DeleteRateBasedRuleResponse
Encode DeleteRateBasedRuleResponse
```

#### `newDeleteRateBasedRuleResponse`

``` purescript
newDeleteRateBasedRuleResponse :: DeleteRateBasedRuleResponse
```

Constructs DeleteRateBasedRuleResponse from required parameters

#### `newDeleteRateBasedRuleResponse'`

``` purescript
newDeleteRateBasedRuleResponse' :: ({ "ChangeToken" :: Maybe (ChangeToken) } -> { "ChangeToken" :: Maybe (ChangeToken) }) -> DeleteRateBasedRuleResponse
```

Constructs DeleteRateBasedRuleResponse's fields from required parameters

#### `DeleteRegexMatchSetRequest`

``` purescript
newtype DeleteRegexMatchSetRequest
  = DeleteRegexMatchSetRequest { "RegexMatchSetId" :: ResourceId, "ChangeToken" :: ChangeToken }
```

##### Instances
``` purescript
Newtype DeleteRegexMatchSetRequest _
Generic DeleteRegexMatchSetRequest _
Show DeleteRegexMatchSetRequest
Decode DeleteRegexMatchSetRequest
Encode DeleteRegexMatchSetRequest
```

#### `newDeleteRegexMatchSetRequest`

``` purescript
newDeleteRegexMatchSetRequest :: ChangeToken -> ResourceId -> DeleteRegexMatchSetRequest
```

Constructs DeleteRegexMatchSetRequest from required parameters

#### `newDeleteRegexMatchSetRequest'`

``` purescript
newDeleteRegexMatchSetRequest' :: ChangeToken -> ResourceId -> ({ "RegexMatchSetId" :: ResourceId, "ChangeToken" :: ChangeToken } -> { "RegexMatchSetId" :: ResourceId, "ChangeToken" :: ChangeToken }) -> DeleteRegexMatchSetRequest
```

Constructs DeleteRegexMatchSetRequest's fields from required parameters

#### `DeleteRegexMatchSetResponse`

``` purescript
newtype DeleteRegexMatchSetResponse
  = DeleteRegexMatchSetResponse { "ChangeToken" :: Maybe (ChangeToken) }
```

##### Instances
``` purescript
Newtype DeleteRegexMatchSetResponse _
Generic DeleteRegexMatchSetResponse _
Show DeleteRegexMatchSetResponse
Decode DeleteRegexMatchSetResponse
Encode DeleteRegexMatchSetResponse
```

#### `newDeleteRegexMatchSetResponse`

``` purescript
newDeleteRegexMatchSetResponse :: DeleteRegexMatchSetResponse
```

Constructs DeleteRegexMatchSetResponse from required parameters

#### `newDeleteRegexMatchSetResponse'`

``` purescript
newDeleteRegexMatchSetResponse' :: ({ "ChangeToken" :: Maybe (ChangeToken) } -> { "ChangeToken" :: Maybe (ChangeToken) }) -> DeleteRegexMatchSetResponse
```

Constructs DeleteRegexMatchSetResponse's fields from required parameters

#### `DeleteRegexPatternSetRequest`

``` purescript
newtype DeleteRegexPatternSetRequest
  = DeleteRegexPatternSetRequest { "RegexPatternSetId" :: ResourceId, "ChangeToken" :: ChangeToken }
```

##### Instances
``` purescript
Newtype DeleteRegexPatternSetRequest _
Generic DeleteRegexPatternSetRequest _
Show DeleteRegexPatternSetRequest
Decode DeleteRegexPatternSetRequest
Encode DeleteRegexPatternSetRequest
```

#### `newDeleteRegexPatternSetRequest`

``` purescript
newDeleteRegexPatternSetRequest :: ChangeToken -> ResourceId -> DeleteRegexPatternSetRequest
```

Constructs DeleteRegexPatternSetRequest from required parameters

#### `newDeleteRegexPatternSetRequest'`

``` purescript
newDeleteRegexPatternSetRequest' :: ChangeToken -> ResourceId -> ({ "RegexPatternSetId" :: ResourceId, "ChangeToken" :: ChangeToken } -> { "RegexPatternSetId" :: ResourceId, "ChangeToken" :: ChangeToken }) -> DeleteRegexPatternSetRequest
```

Constructs DeleteRegexPatternSetRequest's fields from required parameters

#### `DeleteRegexPatternSetResponse`

``` purescript
newtype DeleteRegexPatternSetResponse
  = DeleteRegexPatternSetResponse { "ChangeToken" :: Maybe (ChangeToken) }
```

##### Instances
``` purescript
Newtype DeleteRegexPatternSetResponse _
Generic DeleteRegexPatternSetResponse _
Show DeleteRegexPatternSetResponse
Decode DeleteRegexPatternSetResponse
Encode DeleteRegexPatternSetResponse
```

#### `newDeleteRegexPatternSetResponse`

``` purescript
newDeleteRegexPatternSetResponse :: DeleteRegexPatternSetResponse
```

Constructs DeleteRegexPatternSetResponse from required parameters

#### `newDeleteRegexPatternSetResponse'`

``` purescript
newDeleteRegexPatternSetResponse' :: ({ "ChangeToken" :: Maybe (ChangeToken) } -> { "ChangeToken" :: Maybe (ChangeToken) }) -> DeleteRegexPatternSetResponse
```

Constructs DeleteRegexPatternSetResponse's fields from required parameters

#### `DeleteRuleGroupRequest`

``` purescript
newtype DeleteRuleGroupRequest
  = DeleteRuleGroupRequest { "RuleGroupId" :: ResourceId, "ChangeToken" :: ChangeToken }
```

##### Instances
``` purescript
Newtype DeleteRuleGroupRequest _
Generic DeleteRuleGroupRequest _
Show DeleteRuleGroupRequest
Decode DeleteRuleGroupRequest
Encode DeleteRuleGroupRequest
```

#### `newDeleteRuleGroupRequest`

``` purescript
newDeleteRuleGroupRequest :: ChangeToken -> ResourceId -> DeleteRuleGroupRequest
```

Constructs DeleteRuleGroupRequest from required parameters

#### `newDeleteRuleGroupRequest'`

``` purescript
newDeleteRuleGroupRequest' :: ChangeToken -> ResourceId -> ({ "RuleGroupId" :: ResourceId, "ChangeToken" :: ChangeToken } -> { "RuleGroupId" :: ResourceId, "ChangeToken" :: ChangeToken }) -> DeleteRuleGroupRequest
```

Constructs DeleteRuleGroupRequest's fields from required parameters

#### `DeleteRuleGroupResponse`

``` purescript
newtype DeleteRuleGroupResponse
  = DeleteRuleGroupResponse { "ChangeToken" :: Maybe (ChangeToken) }
```

##### Instances
``` purescript
Newtype DeleteRuleGroupResponse _
Generic DeleteRuleGroupResponse _
Show DeleteRuleGroupResponse
Decode DeleteRuleGroupResponse
Encode DeleteRuleGroupResponse
```

#### `newDeleteRuleGroupResponse`

``` purescript
newDeleteRuleGroupResponse :: DeleteRuleGroupResponse
```

Constructs DeleteRuleGroupResponse from required parameters

#### `newDeleteRuleGroupResponse'`

``` purescript
newDeleteRuleGroupResponse' :: ({ "ChangeToken" :: Maybe (ChangeToken) } -> { "ChangeToken" :: Maybe (ChangeToken) }) -> DeleteRuleGroupResponse
```

Constructs DeleteRuleGroupResponse's fields from required parameters

#### `DeleteRuleRequest`

``` purescript
newtype DeleteRuleRequest
  = DeleteRuleRequest { "RuleId" :: ResourceId, "ChangeToken" :: ChangeToken }
```

##### Instances
``` purescript
Newtype DeleteRuleRequest _
Generic DeleteRuleRequest _
Show DeleteRuleRequest
Decode DeleteRuleRequest
Encode DeleteRuleRequest
```

#### `newDeleteRuleRequest`

``` purescript
newDeleteRuleRequest :: ChangeToken -> ResourceId -> DeleteRuleRequest
```

Constructs DeleteRuleRequest from required parameters

#### `newDeleteRuleRequest'`

``` purescript
newDeleteRuleRequest' :: ChangeToken -> ResourceId -> ({ "RuleId" :: ResourceId, "ChangeToken" :: ChangeToken } -> { "RuleId" :: ResourceId, "ChangeToken" :: ChangeToken }) -> DeleteRuleRequest
```

Constructs DeleteRuleRequest's fields from required parameters

#### `DeleteRuleResponse`

``` purescript
newtype DeleteRuleResponse
  = DeleteRuleResponse { "ChangeToken" :: Maybe (ChangeToken) }
```

##### Instances
``` purescript
Newtype DeleteRuleResponse _
Generic DeleteRuleResponse _
Show DeleteRuleResponse
Decode DeleteRuleResponse
Encode DeleteRuleResponse
```

#### `newDeleteRuleResponse`

``` purescript
newDeleteRuleResponse :: DeleteRuleResponse
```

Constructs DeleteRuleResponse from required parameters

#### `newDeleteRuleResponse'`

``` purescript
newDeleteRuleResponse' :: ({ "ChangeToken" :: Maybe (ChangeToken) } -> { "ChangeToken" :: Maybe (ChangeToken) }) -> DeleteRuleResponse
```

Constructs DeleteRuleResponse's fields from required parameters

#### `DeleteSizeConstraintSetRequest`

``` purescript
newtype DeleteSizeConstraintSetRequest
  = DeleteSizeConstraintSetRequest { "SizeConstraintSetId" :: ResourceId, "ChangeToken" :: ChangeToken }
```

##### Instances
``` purescript
Newtype DeleteSizeConstraintSetRequest _
Generic DeleteSizeConstraintSetRequest _
Show DeleteSizeConstraintSetRequest
Decode DeleteSizeConstraintSetRequest
Encode DeleteSizeConstraintSetRequest
```

#### `newDeleteSizeConstraintSetRequest`

``` purescript
newDeleteSizeConstraintSetRequest :: ChangeToken -> ResourceId -> DeleteSizeConstraintSetRequest
```

Constructs DeleteSizeConstraintSetRequest from required parameters

#### `newDeleteSizeConstraintSetRequest'`

``` purescript
newDeleteSizeConstraintSetRequest' :: ChangeToken -> ResourceId -> ({ "SizeConstraintSetId" :: ResourceId, "ChangeToken" :: ChangeToken } -> { "SizeConstraintSetId" :: ResourceId, "ChangeToken" :: ChangeToken }) -> DeleteSizeConstraintSetRequest
```

Constructs DeleteSizeConstraintSetRequest's fields from required parameters

#### `DeleteSizeConstraintSetResponse`

``` purescript
newtype DeleteSizeConstraintSetResponse
  = DeleteSizeConstraintSetResponse { "ChangeToken" :: Maybe (ChangeToken) }
```

##### Instances
``` purescript
Newtype DeleteSizeConstraintSetResponse _
Generic DeleteSizeConstraintSetResponse _
Show DeleteSizeConstraintSetResponse
Decode DeleteSizeConstraintSetResponse
Encode DeleteSizeConstraintSetResponse
```

#### `newDeleteSizeConstraintSetResponse`

``` purescript
newDeleteSizeConstraintSetResponse :: DeleteSizeConstraintSetResponse
```

Constructs DeleteSizeConstraintSetResponse from required parameters

#### `newDeleteSizeConstraintSetResponse'`

``` purescript
newDeleteSizeConstraintSetResponse' :: ({ "ChangeToken" :: Maybe (ChangeToken) } -> { "ChangeToken" :: Maybe (ChangeToken) }) -> DeleteSizeConstraintSetResponse
```

Constructs DeleteSizeConstraintSetResponse's fields from required parameters

#### `DeleteSqlInjectionMatchSetRequest`

``` purescript
newtype DeleteSqlInjectionMatchSetRequest
  = DeleteSqlInjectionMatchSetRequest { "SqlInjectionMatchSetId" :: ResourceId, "ChangeToken" :: ChangeToken }
```

<p>A request to delete a <a>SqlInjectionMatchSet</a> from AWS WAF.</p>

##### Instances
``` purescript
Newtype DeleteSqlInjectionMatchSetRequest _
Generic DeleteSqlInjectionMatchSetRequest _
Show DeleteSqlInjectionMatchSetRequest
Decode DeleteSqlInjectionMatchSetRequest
Encode DeleteSqlInjectionMatchSetRequest
```

#### `newDeleteSqlInjectionMatchSetRequest`

``` purescript
newDeleteSqlInjectionMatchSetRequest :: ChangeToken -> ResourceId -> DeleteSqlInjectionMatchSetRequest
```

Constructs DeleteSqlInjectionMatchSetRequest from required parameters

#### `newDeleteSqlInjectionMatchSetRequest'`

``` purescript
newDeleteSqlInjectionMatchSetRequest' :: ChangeToken -> ResourceId -> ({ "SqlInjectionMatchSetId" :: ResourceId, "ChangeToken" :: ChangeToken } -> { "SqlInjectionMatchSetId" :: ResourceId, "ChangeToken" :: ChangeToken }) -> DeleteSqlInjectionMatchSetRequest
```

Constructs DeleteSqlInjectionMatchSetRequest's fields from required parameters

#### `DeleteSqlInjectionMatchSetResponse`

``` purescript
newtype DeleteSqlInjectionMatchSetResponse
  = DeleteSqlInjectionMatchSetResponse { "ChangeToken" :: Maybe (ChangeToken) }
```

<p>The response to a request to delete a <a>SqlInjectionMatchSet</a> from AWS WAF.</p>

##### Instances
``` purescript
Newtype DeleteSqlInjectionMatchSetResponse _
Generic DeleteSqlInjectionMatchSetResponse _
Show DeleteSqlInjectionMatchSetResponse
Decode DeleteSqlInjectionMatchSetResponse
Encode DeleteSqlInjectionMatchSetResponse
```

#### `newDeleteSqlInjectionMatchSetResponse`

``` purescript
newDeleteSqlInjectionMatchSetResponse :: DeleteSqlInjectionMatchSetResponse
```

Constructs DeleteSqlInjectionMatchSetResponse from required parameters

#### `newDeleteSqlInjectionMatchSetResponse'`

``` purescript
newDeleteSqlInjectionMatchSetResponse' :: ({ "ChangeToken" :: Maybe (ChangeToken) } -> { "ChangeToken" :: Maybe (ChangeToken) }) -> DeleteSqlInjectionMatchSetResponse
```

Constructs DeleteSqlInjectionMatchSetResponse's fields from required parameters

#### `DeleteWebACLRequest`

``` purescript
newtype DeleteWebACLRequest
  = DeleteWebACLRequest { "WebACLId" :: ResourceId, "ChangeToken" :: ChangeToken }
```

##### Instances
``` purescript
Newtype DeleteWebACLRequest _
Generic DeleteWebACLRequest _
Show DeleteWebACLRequest
Decode DeleteWebACLRequest
Encode DeleteWebACLRequest
```

#### `newDeleteWebACLRequest`

``` purescript
newDeleteWebACLRequest :: ChangeToken -> ResourceId -> DeleteWebACLRequest
```

Constructs DeleteWebACLRequest from required parameters

#### `newDeleteWebACLRequest'`

``` purescript
newDeleteWebACLRequest' :: ChangeToken -> ResourceId -> ({ "WebACLId" :: ResourceId, "ChangeToken" :: ChangeToken } -> { "WebACLId" :: ResourceId, "ChangeToken" :: ChangeToken }) -> DeleteWebACLRequest
```

Constructs DeleteWebACLRequest's fields from required parameters

#### `DeleteWebACLResponse`

``` purescript
newtype DeleteWebACLResponse
  = DeleteWebACLResponse { "ChangeToken" :: Maybe (ChangeToken) }
```

##### Instances
``` purescript
Newtype DeleteWebACLResponse _
Generic DeleteWebACLResponse _
Show DeleteWebACLResponse
Decode DeleteWebACLResponse
Encode DeleteWebACLResponse
```

#### `newDeleteWebACLResponse`

``` purescript
newDeleteWebACLResponse :: DeleteWebACLResponse
```

Constructs DeleteWebACLResponse from required parameters

#### `newDeleteWebACLResponse'`

``` purescript
newDeleteWebACLResponse' :: ({ "ChangeToken" :: Maybe (ChangeToken) } -> { "ChangeToken" :: Maybe (ChangeToken) }) -> DeleteWebACLResponse
```

Constructs DeleteWebACLResponse's fields from required parameters

#### `DeleteXssMatchSetRequest`

``` purescript
newtype DeleteXssMatchSetRequest
  = DeleteXssMatchSetRequest { "XssMatchSetId" :: ResourceId, "ChangeToken" :: ChangeToken }
```

<p>A request to delete an <a>XssMatchSet</a> from AWS WAF.</p>

##### Instances
``` purescript
Newtype DeleteXssMatchSetRequest _
Generic DeleteXssMatchSetRequest _
Show DeleteXssMatchSetRequest
Decode DeleteXssMatchSetRequest
Encode DeleteXssMatchSetRequest
```

#### `newDeleteXssMatchSetRequest`

``` purescript
newDeleteXssMatchSetRequest :: ChangeToken -> ResourceId -> DeleteXssMatchSetRequest
```

Constructs DeleteXssMatchSetRequest from required parameters

#### `newDeleteXssMatchSetRequest'`

``` purescript
newDeleteXssMatchSetRequest' :: ChangeToken -> ResourceId -> ({ "XssMatchSetId" :: ResourceId, "ChangeToken" :: ChangeToken } -> { "XssMatchSetId" :: ResourceId, "ChangeToken" :: ChangeToken }) -> DeleteXssMatchSetRequest
```

Constructs DeleteXssMatchSetRequest's fields from required parameters

#### `DeleteXssMatchSetResponse`

``` purescript
newtype DeleteXssMatchSetResponse
  = DeleteXssMatchSetResponse { "ChangeToken" :: Maybe (ChangeToken) }
```

<p>The response to a request to delete an <a>XssMatchSet</a> from AWS WAF.</p>

##### Instances
``` purescript
Newtype DeleteXssMatchSetResponse _
Generic DeleteXssMatchSetResponse _
Show DeleteXssMatchSetResponse
Decode DeleteXssMatchSetResponse
Encode DeleteXssMatchSetResponse
```

#### `newDeleteXssMatchSetResponse`

``` purescript
newDeleteXssMatchSetResponse :: DeleteXssMatchSetResponse
```

Constructs DeleteXssMatchSetResponse from required parameters

#### `newDeleteXssMatchSetResponse'`

``` purescript
newDeleteXssMatchSetResponse' :: ({ "ChangeToken" :: Maybe (ChangeToken) } -> { "ChangeToken" :: Maybe (ChangeToken) }) -> DeleteXssMatchSetResponse
```

Constructs DeleteXssMatchSetResponse's fields from required parameters

#### `DisassociateWebACLRequest`

``` purescript
newtype DisassociateWebACLRequest
  = DisassociateWebACLRequest { "ResourceArn" :: ResourceArn }
```

##### Instances
``` purescript
Newtype DisassociateWebACLRequest _
Generic DisassociateWebACLRequest _
Show DisassociateWebACLRequest
Decode DisassociateWebACLRequest
Encode DisassociateWebACLRequest
```

#### `newDisassociateWebACLRequest`

``` purescript
newDisassociateWebACLRequest :: ResourceArn -> DisassociateWebACLRequest
```

Constructs DisassociateWebACLRequest from required parameters

#### `newDisassociateWebACLRequest'`

``` purescript
newDisassociateWebACLRequest' :: ResourceArn -> ({ "ResourceArn" :: ResourceArn } -> { "ResourceArn" :: ResourceArn }) -> DisassociateWebACLRequest
```

Constructs DisassociateWebACLRequest's fields from required parameters

#### `DisassociateWebACLResponse`

``` purescript
newtype DisassociateWebACLResponse
  = DisassociateWebACLResponse NoArguments
```

##### Instances
``` purescript
Newtype DisassociateWebACLResponse _
Generic DisassociateWebACLResponse _
Show DisassociateWebACLResponse
Decode DisassociateWebACLResponse
Encode DisassociateWebACLResponse
```

#### `FieldToMatch`

``` purescript
newtype FieldToMatch
  = FieldToMatch { "Type" :: MatchFieldType, "Data" :: Maybe (MatchFieldData) }
```

<p>Specifies where in a web request to look for <code>TargetString</code>.</p>

##### Instances
``` purescript
Newtype FieldToMatch _
Generic FieldToMatch _
Show FieldToMatch
Decode FieldToMatch
Encode FieldToMatch
```

#### `newFieldToMatch`

``` purescript
newFieldToMatch :: MatchFieldType -> FieldToMatch
```

Constructs FieldToMatch from required parameters

#### `newFieldToMatch'`

``` purescript
newFieldToMatch' :: MatchFieldType -> ({ "Type" :: MatchFieldType, "Data" :: Maybe (MatchFieldData) } -> { "Type" :: MatchFieldType, "Data" :: Maybe (MatchFieldData) }) -> FieldToMatch
```

Constructs FieldToMatch's fields from required parameters

#### `GeoMatchConstraint`

``` purescript
newtype GeoMatchConstraint
  = GeoMatchConstraint { "Type" :: GeoMatchConstraintType, "Value" :: GeoMatchConstraintValue }
```

<p>The country from which web requests originate that you want AWS WAF to search for.</p>

##### Instances
``` purescript
Newtype GeoMatchConstraint _
Generic GeoMatchConstraint _
Show GeoMatchConstraint
Decode GeoMatchConstraint
Encode GeoMatchConstraint
```

#### `newGeoMatchConstraint`

``` purescript
newGeoMatchConstraint :: GeoMatchConstraintType -> GeoMatchConstraintValue -> GeoMatchConstraint
```

Constructs GeoMatchConstraint from required parameters

#### `newGeoMatchConstraint'`

``` purescript
newGeoMatchConstraint' :: GeoMatchConstraintType -> GeoMatchConstraintValue -> ({ "Type" :: GeoMatchConstraintType, "Value" :: GeoMatchConstraintValue } -> { "Type" :: GeoMatchConstraintType, "Value" :: GeoMatchConstraintValue }) -> GeoMatchConstraint
```

Constructs GeoMatchConstraint's fields from required parameters

#### `GeoMatchConstraintType`

``` purescript
newtype GeoMatchConstraintType
  = GeoMatchConstraintType String
```

##### Instances
``` purescript
Newtype GeoMatchConstraintType _
Generic GeoMatchConstraintType _
Show GeoMatchConstraintType
Decode GeoMatchConstraintType
Encode GeoMatchConstraintType
```

#### `GeoMatchConstraintValue`

``` purescript
newtype GeoMatchConstraintValue
  = GeoMatchConstraintValue String
```

##### Instances
``` purescript
Newtype GeoMatchConstraintValue _
Generic GeoMatchConstraintValue _
Show GeoMatchConstraintValue
Decode GeoMatchConstraintValue
Encode GeoMatchConstraintValue
```

#### `GeoMatchConstraints`

``` purescript
newtype GeoMatchConstraints
  = GeoMatchConstraints (Array GeoMatchConstraint)
```

##### Instances
``` purescript
Newtype GeoMatchConstraints _
Generic GeoMatchConstraints _
Show GeoMatchConstraints
Decode GeoMatchConstraints
Encode GeoMatchConstraints
```

#### `GeoMatchSet`

``` purescript
newtype GeoMatchSet
  = GeoMatchSet { "GeoMatchSetId" :: ResourceId, "Name" :: Maybe (ResourceName), "GeoMatchConstraints" :: GeoMatchConstraints }
```

<p>Contains one or more countries that AWS WAF will search for.</p>

##### Instances
``` purescript
Newtype GeoMatchSet _
Generic GeoMatchSet _
Show GeoMatchSet
Decode GeoMatchSet
Encode GeoMatchSet
```

#### `newGeoMatchSet`

``` purescript
newGeoMatchSet :: GeoMatchConstraints -> ResourceId -> GeoMatchSet
```

Constructs GeoMatchSet from required parameters

#### `newGeoMatchSet'`

``` purescript
newGeoMatchSet' :: GeoMatchConstraints -> ResourceId -> ({ "GeoMatchSetId" :: ResourceId, "Name" :: Maybe (ResourceName), "GeoMatchConstraints" :: GeoMatchConstraints } -> { "GeoMatchSetId" :: ResourceId, "Name" :: Maybe (ResourceName), "GeoMatchConstraints" :: GeoMatchConstraints }) -> GeoMatchSet
```

Constructs GeoMatchSet's fields from required parameters

#### `GeoMatchSetSummaries`

``` purescript
newtype GeoMatchSetSummaries
  = GeoMatchSetSummaries (Array GeoMatchSetSummary)
```

##### Instances
``` purescript
Newtype GeoMatchSetSummaries _
Generic GeoMatchSetSummaries _
Show GeoMatchSetSummaries
Decode GeoMatchSetSummaries
Encode GeoMatchSetSummaries
```

#### `GeoMatchSetSummary`

``` purescript
newtype GeoMatchSetSummary
  = GeoMatchSetSummary { "GeoMatchSetId" :: ResourceId, "Name" :: ResourceName }
```

<p>Contains the identifier and the name of the <code>GeoMatchSet</code>.</p>

##### Instances
``` purescript
Newtype GeoMatchSetSummary _
Generic GeoMatchSetSummary _
Show GeoMatchSetSummary
Decode GeoMatchSetSummary
Encode GeoMatchSetSummary
```

#### `newGeoMatchSetSummary`

``` purescript
newGeoMatchSetSummary :: ResourceId -> ResourceName -> GeoMatchSetSummary
```

Constructs GeoMatchSetSummary from required parameters

#### `newGeoMatchSetSummary'`

``` purescript
newGeoMatchSetSummary' :: ResourceId -> ResourceName -> ({ "GeoMatchSetId" :: ResourceId, "Name" :: ResourceName } -> { "GeoMatchSetId" :: ResourceId, "Name" :: ResourceName }) -> GeoMatchSetSummary
```

Constructs GeoMatchSetSummary's fields from required parameters

#### `GeoMatchSetUpdate`

``` purescript
newtype GeoMatchSetUpdate
  = GeoMatchSetUpdate { "Action" :: ChangeAction, "GeoMatchConstraint" :: GeoMatchConstraint }
```

<p>Specifies the type of update to perform to an <a>GeoMatchSet</a> with <a>UpdateGeoMatchSet</a>.</p>

##### Instances
``` purescript
Newtype GeoMatchSetUpdate _
Generic GeoMatchSetUpdate _
Show GeoMatchSetUpdate
Decode GeoMatchSetUpdate
Encode GeoMatchSetUpdate
```

#### `newGeoMatchSetUpdate`

``` purescript
newGeoMatchSetUpdate :: ChangeAction -> GeoMatchConstraint -> GeoMatchSetUpdate
```

Constructs GeoMatchSetUpdate from required parameters

#### `newGeoMatchSetUpdate'`

``` purescript
newGeoMatchSetUpdate' :: ChangeAction -> GeoMatchConstraint -> ({ "Action" :: ChangeAction, "GeoMatchConstraint" :: GeoMatchConstraint } -> { "Action" :: ChangeAction, "GeoMatchConstraint" :: GeoMatchConstraint }) -> GeoMatchSetUpdate
```

Constructs GeoMatchSetUpdate's fields from required parameters

#### `GeoMatchSetUpdates`

``` purescript
newtype GeoMatchSetUpdates
  = GeoMatchSetUpdates (Array GeoMatchSetUpdate)
```

##### Instances
``` purescript
Newtype GeoMatchSetUpdates _
Generic GeoMatchSetUpdates _
Show GeoMatchSetUpdates
Decode GeoMatchSetUpdates
Encode GeoMatchSetUpdates
```

#### `GetByteMatchSetRequest`

``` purescript
newtype GetByteMatchSetRequest
  = GetByteMatchSetRequest { "ByteMatchSetId" :: ResourceId }
```

##### Instances
``` purescript
Newtype GetByteMatchSetRequest _
Generic GetByteMatchSetRequest _
Show GetByteMatchSetRequest
Decode GetByteMatchSetRequest
Encode GetByteMatchSetRequest
```

#### `newGetByteMatchSetRequest`

``` purescript
newGetByteMatchSetRequest :: ResourceId -> GetByteMatchSetRequest
```

Constructs GetByteMatchSetRequest from required parameters

#### `newGetByteMatchSetRequest'`

``` purescript
newGetByteMatchSetRequest' :: ResourceId -> ({ "ByteMatchSetId" :: ResourceId } -> { "ByteMatchSetId" :: ResourceId }) -> GetByteMatchSetRequest
```

Constructs GetByteMatchSetRequest's fields from required parameters

#### `GetByteMatchSetResponse`

``` purescript
newtype GetByteMatchSetResponse
  = GetByteMatchSetResponse { "ByteMatchSet" :: Maybe (ByteMatchSet) }
```

##### Instances
``` purescript
Newtype GetByteMatchSetResponse _
Generic GetByteMatchSetResponse _
Show GetByteMatchSetResponse
Decode GetByteMatchSetResponse
Encode GetByteMatchSetResponse
```

#### `newGetByteMatchSetResponse`

``` purescript
newGetByteMatchSetResponse :: GetByteMatchSetResponse
```

Constructs GetByteMatchSetResponse from required parameters

#### `newGetByteMatchSetResponse'`

``` purescript
newGetByteMatchSetResponse' :: ({ "ByteMatchSet" :: Maybe (ByteMatchSet) } -> { "ByteMatchSet" :: Maybe (ByteMatchSet) }) -> GetByteMatchSetResponse
```

Constructs GetByteMatchSetResponse's fields from required parameters

#### `GetChangeTokenRequest`

``` purescript
newtype GetChangeTokenRequest
  = GetChangeTokenRequest NoArguments
```

##### Instances
``` purescript
Newtype GetChangeTokenRequest _
Generic GetChangeTokenRequest _
Show GetChangeTokenRequest
Decode GetChangeTokenRequest
Encode GetChangeTokenRequest
```

#### `GetChangeTokenResponse`

``` purescript
newtype GetChangeTokenResponse
  = GetChangeTokenResponse { "ChangeToken" :: Maybe (ChangeToken) }
```

##### Instances
``` purescript
Newtype GetChangeTokenResponse _
Generic GetChangeTokenResponse _
Show GetChangeTokenResponse
Decode GetChangeTokenResponse
Encode GetChangeTokenResponse
```

#### `newGetChangeTokenResponse`

``` purescript
newGetChangeTokenResponse :: GetChangeTokenResponse
```

Constructs GetChangeTokenResponse from required parameters

#### `newGetChangeTokenResponse'`

``` purescript
newGetChangeTokenResponse' :: ({ "ChangeToken" :: Maybe (ChangeToken) } -> { "ChangeToken" :: Maybe (ChangeToken) }) -> GetChangeTokenResponse
```

Constructs GetChangeTokenResponse's fields from required parameters

#### `GetChangeTokenStatusRequest`

``` purescript
newtype GetChangeTokenStatusRequest
  = GetChangeTokenStatusRequest { "ChangeToken" :: ChangeToken }
```

##### Instances
``` purescript
Newtype GetChangeTokenStatusRequest _
Generic GetChangeTokenStatusRequest _
Show GetChangeTokenStatusRequest
Decode GetChangeTokenStatusRequest
Encode GetChangeTokenStatusRequest
```

#### `newGetChangeTokenStatusRequest`

``` purescript
newGetChangeTokenStatusRequest :: ChangeToken -> GetChangeTokenStatusRequest
```

Constructs GetChangeTokenStatusRequest from required parameters

#### `newGetChangeTokenStatusRequest'`

``` purescript
newGetChangeTokenStatusRequest' :: ChangeToken -> ({ "ChangeToken" :: ChangeToken } -> { "ChangeToken" :: ChangeToken }) -> GetChangeTokenStatusRequest
```

Constructs GetChangeTokenStatusRequest's fields from required parameters

#### `GetChangeTokenStatusResponse`

``` purescript
newtype GetChangeTokenStatusResponse
  = GetChangeTokenStatusResponse { "ChangeTokenStatus" :: Maybe (ChangeTokenStatus) }
```

##### Instances
``` purescript
Newtype GetChangeTokenStatusResponse _
Generic GetChangeTokenStatusResponse _
Show GetChangeTokenStatusResponse
Decode GetChangeTokenStatusResponse
Encode GetChangeTokenStatusResponse
```

#### `newGetChangeTokenStatusResponse`

``` purescript
newGetChangeTokenStatusResponse :: GetChangeTokenStatusResponse
```

Constructs GetChangeTokenStatusResponse from required parameters

#### `newGetChangeTokenStatusResponse'`

``` purescript
newGetChangeTokenStatusResponse' :: ({ "ChangeTokenStatus" :: Maybe (ChangeTokenStatus) } -> { "ChangeTokenStatus" :: Maybe (ChangeTokenStatus) }) -> GetChangeTokenStatusResponse
```

Constructs GetChangeTokenStatusResponse's fields from required parameters

#### `GetGeoMatchSetRequest`

``` purescript
newtype GetGeoMatchSetRequest
  = GetGeoMatchSetRequest { "GeoMatchSetId" :: ResourceId }
```

##### Instances
``` purescript
Newtype GetGeoMatchSetRequest _
Generic GetGeoMatchSetRequest _
Show GetGeoMatchSetRequest
Decode GetGeoMatchSetRequest
Encode GetGeoMatchSetRequest
```

#### `newGetGeoMatchSetRequest`

``` purescript
newGetGeoMatchSetRequest :: ResourceId -> GetGeoMatchSetRequest
```

Constructs GetGeoMatchSetRequest from required parameters

#### `newGetGeoMatchSetRequest'`

``` purescript
newGetGeoMatchSetRequest' :: ResourceId -> ({ "GeoMatchSetId" :: ResourceId } -> { "GeoMatchSetId" :: ResourceId }) -> GetGeoMatchSetRequest
```

Constructs GetGeoMatchSetRequest's fields from required parameters

#### `GetGeoMatchSetResponse`

``` purescript
newtype GetGeoMatchSetResponse
  = GetGeoMatchSetResponse { "GeoMatchSet" :: Maybe (GeoMatchSet) }
```

##### Instances
``` purescript
Newtype GetGeoMatchSetResponse _
Generic GetGeoMatchSetResponse _
Show GetGeoMatchSetResponse
Decode GetGeoMatchSetResponse
Encode GetGeoMatchSetResponse
```

#### `newGetGeoMatchSetResponse`

``` purescript
newGetGeoMatchSetResponse :: GetGeoMatchSetResponse
```

Constructs GetGeoMatchSetResponse from required parameters

#### `newGetGeoMatchSetResponse'`

``` purescript
newGetGeoMatchSetResponse' :: ({ "GeoMatchSet" :: Maybe (GeoMatchSet) } -> { "GeoMatchSet" :: Maybe (GeoMatchSet) }) -> GetGeoMatchSetResponse
```

Constructs GetGeoMatchSetResponse's fields from required parameters

#### `GetIPSetRequest`

``` purescript
newtype GetIPSetRequest
  = GetIPSetRequest { "IPSetId" :: ResourceId }
```

##### Instances
``` purescript
Newtype GetIPSetRequest _
Generic GetIPSetRequest _
Show GetIPSetRequest
Decode GetIPSetRequest
Encode GetIPSetRequest
```

#### `newGetIPSetRequest`

``` purescript
newGetIPSetRequest :: ResourceId -> GetIPSetRequest
```

Constructs GetIPSetRequest from required parameters

#### `newGetIPSetRequest'`

``` purescript
newGetIPSetRequest' :: ResourceId -> ({ "IPSetId" :: ResourceId } -> { "IPSetId" :: ResourceId }) -> GetIPSetRequest
```

Constructs GetIPSetRequest's fields from required parameters

#### `GetIPSetResponse`

``` purescript
newtype GetIPSetResponse
  = GetIPSetResponse { "IPSet" :: Maybe (IPSet) }
```

##### Instances
``` purescript
Newtype GetIPSetResponse _
Generic GetIPSetResponse _
Show GetIPSetResponse
Decode GetIPSetResponse
Encode GetIPSetResponse
```

#### `newGetIPSetResponse`

``` purescript
newGetIPSetResponse :: GetIPSetResponse
```

Constructs GetIPSetResponse from required parameters

#### `newGetIPSetResponse'`

``` purescript
newGetIPSetResponse' :: ({ "IPSet" :: Maybe (IPSet) } -> { "IPSet" :: Maybe (IPSet) }) -> GetIPSetResponse
```

Constructs GetIPSetResponse's fields from required parameters

#### `GetPermissionPolicyRequest`

``` purescript
newtype GetPermissionPolicyRequest
  = GetPermissionPolicyRequest { "ResourceArn" :: ResourceArn }
```

##### Instances
``` purescript
Newtype GetPermissionPolicyRequest _
Generic GetPermissionPolicyRequest _
Show GetPermissionPolicyRequest
Decode GetPermissionPolicyRequest
Encode GetPermissionPolicyRequest
```

#### `newGetPermissionPolicyRequest`

``` purescript
newGetPermissionPolicyRequest :: ResourceArn -> GetPermissionPolicyRequest
```

Constructs GetPermissionPolicyRequest from required parameters

#### `newGetPermissionPolicyRequest'`

``` purescript
newGetPermissionPolicyRequest' :: ResourceArn -> ({ "ResourceArn" :: ResourceArn } -> { "ResourceArn" :: ResourceArn }) -> GetPermissionPolicyRequest
```

Constructs GetPermissionPolicyRequest's fields from required parameters

#### `GetPermissionPolicyResponse`

``` purescript
newtype GetPermissionPolicyResponse
  = GetPermissionPolicyResponse { "Policy" :: Maybe (PolicyString) }
```

##### Instances
``` purescript
Newtype GetPermissionPolicyResponse _
Generic GetPermissionPolicyResponse _
Show GetPermissionPolicyResponse
Decode GetPermissionPolicyResponse
Encode GetPermissionPolicyResponse
```

#### `newGetPermissionPolicyResponse`

``` purescript
newGetPermissionPolicyResponse :: GetPermissionPolicyResponse
```

Constructs GetPermissionPolicyResponse from required parameters

#### `newGetPermissionPolicyResponse'`

``` purescript
newGetPermissionPolicyResponse' :: ({ "Policy" :: Maybe (PolicyString) } -> { "Policy" :: Maybe (PolicyString) }) -> GetPermissionPolicyResponse
```

Constructs GetPermissionPolicyResponse's fields from required parameters

#### `GetRateBasedRuleManagedKeysRequest`

``` purescript
newtype GetRateBasedRuleManagedKeysRequest
  = GetRateBasedRuleManagedKeysRequest { "RuleId" :: ResourceId, "NextMarker" :: Maybe (NextMarker) }
```

##### Instances
``` purescript
Newtype GetRateBasedRuleManagedKeysRequest _
Generic GetRateBasedRuleManagedKeysRequest _
Show GetRateBasedRuleManagedKeysRequest
Decode GetRateBasedRuleManagedKeysRequest
Encode GetRateBasedRuleManagedKeysRequest
```

#### `newGetRateBasedRuleManagedKeysRequest`

``` purescript
newGetRateBasedRuleManagedKeysRequest :: ResourceId -> GetRateBasedRuleManagedKeysRequest
```

Constructs GetRateBasedRuleManagedKeysRequest from required parameters

#### `newGetRateBasedRuleManagedKeysRequest'`

``` purescript
newGetRateBasedRuleManagedKeysRequest' :: ResourceId -> ({ "RuleId" :: ResourceId, "NextMarker" :: Maybe (NextMarker) } -> { "RuleId" :: ResourceId, "NextMarker" :: Maybe (NextMarker) }) -> GetRateBasedRuleManagedKeysRequest
```

Constructs GetRateBasedRuleManagedKeysRequest's fields from required parameters

#### `GetRateBasedRuleManagedKeysResponse`

``` purescript
newtype GetRateBasedRuleManagedKeysResponse
  = GetRateBasedRuleManagedKeysResponse { "ManagedKeys" :: Maybe (ManagedKeys), "NextMarker" :: Maybe (NextMarker) }
```

##### Instances
``` purescript
Newtype GetRateBasedRuleManagedKeysResponse _
Generic GetRateBasedRuleManagedKeysResponse _
Show GetRateBasedRuleManagedKeysResponse
Decode GetRateBasedRuleManagedKeysResponse
Encode GetRateBasedRuleManagedKeysResponse
```

#### `newGetRateBasedRuleManagedKeysResponse`

``` purescript
newGetRateBasedRuleManagedKeysResponse :: GetRateBasedRuleManagedKeysResponse
```

Constructs GetRateBasedRuleManagedKeysResponse from required parameters

#### `newGetRateBasedRuleManagedKeysResponse'`

``` purescript
newGetRateBasedRuleManagedKeysResponse' :: ({ "ManagedKeys" :: Maybe (ManagedKeys), "NextMarker" :: Maybe (NextMarker) } -> { "ManagedKeys" :: Maybe (ManagedKeys), "NextMarker" :: Maybe (NextMarker) }) -> GetRateBasedRuleManagedKeysResponse
```

Constructs GetRateBasedRuleManagedKeysResponse's fields from required parameters

#### `GetRateBasedRuleRequest`

``` purescript
newtype GetRateBasedRuleRequest
  = GetRateBasedRuleRequest { "RuleId" :: ResourceId }
```

##### Instances
``` purescript
Newtype GetRateBasedRuleRequest _
Generic GetRateBasedRuleRequest _
Show GetRateBasedRuleRequest
Decode GetRateBasedRuleRequest
Encode GetRateBasedRuleRequest
```

#### `newGetRateBasedRuleRequest`

``` purescript
newGetRateBasedRuleRequest :: ResourceId -> GetRateBasedRuleRequest
```

Constructs GetRateBasedRuleRequest from required parameters

#### `newGetRateBasedRuleRequest'`

``` purescript
newGetRateBasedRuleRequest' :: ResourceId -> ({ "RuleId" :: ResourceId } -> { "RuleId" :: ResourceId }) -> GetRateBasedRuleRequest
```

Constructs GetRateBasedRuleRequest's fields from required parameters

#### `GetRateBasedRuleResponse`

``` purescript
newtype GetRateBasedRuleResponse
  = GetRateBasedRuleResponse { "Rule" :: Maybe (RateBasedRule) }
```

##### Instances
``` purescript
Newtype GetRateBasedRuleResponse _
Generic GetRateBasedRuleResponse _
Show GetRateBasedRuleResponse
Decode GetRateBasedRuleResponse
Encode GetRateBasedRuleResponse
```

#### `newGetRateBasedRuleResponse`

``` purescript
newGetRateBasedRuleResponse :: GetRateBasedRuleResponse
```

Constructs GetRateBasedRuleResponse from required parameters

#### `newGetRateBasedRuleResponse'`

``` purescript
newGetRateBasedRuleResponse' :: ({ "Rule" :: Maybe (RateBasedRule) } -> { "Rule" :: Maybe (RateBasedRule) }) -> GetRateBasedRuleResponse
```

Constructs GetRateBasedRuleResponse's fields from required parameters

#### `GetRegexMatchSetRequest`

``` purescript
newtype GetRegexMatchSetRequest
  = GetRegexMatchSetRequest { "RegexMatchSetId" :: ResourceId }
```

##### Instances
``` purescript
Newtype GetRegexMatchSetRequest _
Generic GetRegexMatchSetRequest _
Show GetRegexMatchSetRequest
Decode GetRegexMatchSetRequest
Encode GetRegexMatchSetRequest
```

#### `newGetRegexMatchSetRequest`

``` purescript
newGetRegexMatchSetRequest :: ResourceId -> GetRegexMatchSetRequest
```

Constructs GetRegexMatchSetRequest from required parameters

#### `newGetRegexMatchSetRequest'`

``` purescript
newGetRegexMatchSetRequest' :: ResourceId -> ({ "RegexMatchSetId" :: ResourceId } -> { "RegexMatchSetId" :: ResourceId }) -> GetRegexMatchSetRequest
```

Constructs GetRegexMatchSetRequest's fields from required parameters

#### `GetRegexMatchSetResponse`

``` purescript
newtype GetRegexMatchSetResponse
  = GetRegexMatchSetResponse { "RegexMatchSet" :: Maybe (RegexMatchSet) }
```

##### Instances
``` purescript
Newtype GetRegexMatchSetResponse _
Generic GetRegexMatchSetResponse _
Show GetRegexMatchSetResponse
Decode GetRegexMatchSetResponse
Encode GetRegexMatchSetResponse
```

#### `newGetRegexMatchSetResponse`

``` purescript
newGetRegexMatchSetResponse :: GetRegexMatchSetResponse
```

Constructs GetRegexMatchSetResponse from required parameters

#### `newGetRegexMatchSetResponse'`

``` purescript
newGetRegexMatchSetResponse' :: ({ "RegexMatchSet" :: Maybe (RegexMatchSet) } -> { "RegexMatchSet" :: Maybe (RegexMatchSet) }) -> GetRegexMatchSetResponse
```

Constructs GetRegexMatchSetResponse's fields from required parameters

#### `GetRegexPatternSetRequest`

``` purescript
newtype GetRegexPatternSetRequest
  = GetRegexPatternSetRequest { "RegexPatternSetId" :: ResourceId }
```

##### Instances
``` purescript
Newtype GetRegexPatternSetRequest _
Generic GetRegexPatternSetRequest _
Show GetRegexPatternSetRequest
Decode GetRegexPatternSetRequest
Encode GetRegexPatternSetRequest
```

#### `newGetRegexPatternSetRequest`

``` purescript
newGetRegexPatternSetRequest :: ResourceId -> GetRegexPatternSetRequest
```

Constructs GetRegexPatternSetRequest from required parameters

#### `newGetRegexPatternSetRequest'`

``` purescript
newGetRegexPatternSetRequest' :: ResourceId -> ({ "RegexPatternSetId" :: ResourceId } -> { "RegexPatternSetId" :: ResourceId }) -> GetRegexPatternSetRequest
```

Constructs GetRegexPatternSetRequest's fields from required parameters

#### `GetRegexPatternSetResponse`

``` purescript
newtype GetRegexPatternSetResponse
  = GetRegexPatternSetResponse { "RegexPatternSet" :: Maybe (RegexPatternSet) }
```

##### Instances
``` purescript
Newtype GetRegexPatternSetResponse _
Generic GetRegexPatternSetResponse _
Show GetRegexPatternSetResponse
Decode GetRegexPatternSetResponse
Encode GetRegexPatternSetResponse
```

#### `newGetRegexPatternSetResponse`

``` purescript
newGetRegexPatternSetResponse :: GetRegexPatternSetResponse
```

Constructs GetRegexPatternSetResponse from required parameters

#### `newGetRegexPatternSetResponse'`

``` purescript
newGetRegexPatternSetResponse' :: ({ "RegexPatternSet" :: Maybe (RegexPatternSet) } -> { "RegexPatternSet" :: Maybe (RegexPatternSet) }) -> GetRegexPatternSetResponse
```

Constructs GetRegexPatternSetResponse's fields from required parameters

#### `GetRuleGroupRequest`

``` purescript
newtype GetRuleGroupRequest
  = GetRuleGroupRequest { "RuleGroupId" :: ResourceId }
```

##### Instances
``` purescript
Newtype GetRuleGroupRequest _
Generic GetRuleGroupRequest _
Show GetRuleGroupRequest
Decode GetRuleGroupRequest
Encode GetRuleGroupRequest
```

#### `newGetRuleGroupRequest`

``` purescript
newGetRuleGroupRequest :: ResourceId -> GetRuleGroupRequest
```

Constructs GetRuleGroupRequest from required parameters

#### `newGetRuleGroupRequest'`

``` purescript
newGetRuleGroupRequest' :: ResourceId -> ({ "RuleGroupId" :: ResourceId } -> { "RuleGroupId" :: ResourceId }) -> GetRuleGroupRequest
```

Constructs GetRuleGroupRequest's fields from required parameters

#### `GetRuleGroupResponse`

``` purescript
newtype GetRuleGroupResponse
  = GetRuleGroupResponse { "RuleGroup" :: Maybe (RuleGroup) }
```

##### Instances
``` purescript
Newtype GetRuleGroupResponse _
Generic GetRuleGroupResponse _
Show GetRuleGroupResponse
Decode GetRuleGroupResponse
Encode GetRuleGroupResponse
```

#### `newGetRuleGroupResponse`

``` purescript
newGetRuleGroupResponse :: GetRuleGroupResponse
```

Constructs GetRuleGroupResponse from required parameters

#### `newGetRuleGroupResponse'`

``` purescript
newGetRuleGroupResponse' :: ({ "RuleGroup" :: Maybe (RuleGroup) } -> { "RuleGroup" :: Maybe (RuleGroup) }) -> GetRuleGroupResponse
```

Constructs GetRuleGroupResponse's fields from required parameters

#### `GetRuleRequest`

``` purescript
newtype GetRuleRequest
  = GetRuleRequest { "RuleId" :: ResourceId }
```

##### Instances
``` purescript
Newtype GetRuleRequest _
Generic GetRuleRequest _
Show GetRuleRequest
Decode GetRuleRequest
Encode GetRuleRequest
```

#### `newGetRuleRequest`

``` purescript
newGetRuleRequest :: ResourceId -> GetRuleRequest
```

Constructs GetRuleRequest from required parameters

#### `newGetRuleRequest'`

``` purescript
newGetRuleRequest' :: ResourceId -> ({ "RuleId" :: ResourceId } -> { "RuleId" :: ResourceId }) -> GetRuleRequest
```

Constructs GetRuleRequest's fields from required parameters

#### `GetRuleResponse`

``` purescript
newtype GetRuleResponse
  = GetRuleResponse { "Rule" :: Maybe (Rule) }
```

##### Instances
``` purescript
Newtype GetRuleResponse _
Generic GetRuleResponse _
Show GetRuleResponse
Decode GetRuleResponse
Encode GetRuleResponse
```

#### `newGetRuleResponse`

``` purescript
newGetRuleResponse :: GetRuleResponse
```

Constructs GetRuleResponse from required parameters

#### `newGetRuleResponse'`

``` purescript
newGetRuleResponse' :: ({ "Rule" :: Maybe (Rule) } -> { "Rule" :: Maybe (Rule) }) -> GetRuleResponse
```

Constructs GetRuleResponse's fields from required parameters

#### `GetSampledRequestsMaxItems`

``` purescript
newtype GetSampledRequestsMaxItems
  = GetSampledRequestsMaxItems Number
```

##### Instances
``` purescript
Newtype GetSampledRequestsMaxItems _
Generic GetSampledRequestsMaxItems _
Show GetSampledRequestsMaxItems
Decode GetSampledRequestsMaxItems
Encode GetSampledRequestsMaxItems
```

#### `GetSampledRequestsRequest`

``` purescript
newtype GetSampledRequestsRequest
  = GetSampledRequestsRequest { "WebAclId" :: ResourceId, "RuleId" :: ResourceId, "TimeWindow" :: TimeWindow, "MaxItems" :: GetSampledRequestsMaxItems }
```

##### Instances
``` purescript
Newtype GetSampledRequestsRequest _
Generic GetSampledRequestsRequest _
Show GetSampledRequestsRequest
Decode GetSampledRequestsRequest
Encode GetSampledRequestsRequest
```

#### `newGetSampledRequestsRequest`

``` purescript
newGetSampledRequestsRequest :: GetSampledRequestsMaxItems -> ResourceId -> TimeWindow -> ResourceId -> GetSampledRequestsRequest
```

Constructs GetSampledRequestsRequest from required parameters

#### `newGetSampledRequestsRequest'`

``` purescript
newGetSampledRequestsRequest' :: GetSampledRequestsMaxItems -> ResourceId -> TimeWindow -> ResourceId -> ({ "WebAclId" :: ResourceId, "RuleId" :: ResourceId, "TimeWindow" :: TimeWindow, "MaxItems" :: GetSampledRequestsMaxItems } -> { "WebAclId" :: ResourceId, "RuleId" :: ResourceId, "TimeWindow" :: TimeWindow, "MaxItems" :: GetSampledRequestsMaxItems }) -> GetSampledRequestsRequest
```

Constructs GetSampledRequestsRequest's fields from required parameters

#### `GetSampledRequestsResponse`

``` purescript
newtype GetSampledRequestsResponse
  = GetSampledRequestsResponse { "SampledRequests" :: Maybe (SampledHTTPRequests), "PopulationSize" :: Maybe (PopulationSize), "TimeWindow" :: Maybe (TimeWindow) }
```

##### Instances
``` purescript
Newtype GetSampledRequestsResponse _
Generic GetSampledRequestsResponse _
Show GetSampledRequestsResponse
Decode GetSampledRequestsResponse
Encode GetSampledRequestsResponse
```

#### `newGetSampledRequestsResponse`

``` purescript
newGetSampledRequestsResponse :: GetSampledRequestsResponse
```

Constructs GetSampledRequestsResponse from required parameters

#### `newGetSampledRequestsResponse'`

``` purescript
newGetSampledRequestsResponse' :: ({ "SampledRequests" :: Maybe (SampledHTTPRequests), "PopulationSize" :: Maybe (PopulationSize), "TimeWindow" :: Maybe (TimeWindow) } -> { "SampledRequests" :: Maybe (SampledHTTPRequests), "PopulationSize" :: Maybe (PopulationSize), "TimeWindow" :: Maybe (TimeWindow) }) -> GetSampledRequestsResponse
```

Constructs GetSampledRequestsResponse's fields from required parameters

#### `GetSizeConstraintSetRequest`

``` purescript
newtype GetSizeConstraintSetRequest
  = GetSizeConstraintSetRequest { "SizeConstraintSetId" :: ResourceId }
```

##### Instances
``` purescript
Newtype GetSizeConstraintSetRequest _
Generic GetSizeConstraintSetRequest _
Show GetSizeConstraintSetRequest
Decode GetSizeConstraintSetRequest
Encode GetSizeConstraintSetRequest
```

#### `newGetSizeConstraintSetRequest`

``` purescript
newGetSizeConstraintSetRequest :: ResourceId -> GetSizeConstraintSetRequest
```

Constructs GetSizeConstraintSetRequest from required parameters

#### `newGetSizeConstraintSetRequest'`

``` purescript
newGetSizeConstraintSetRequest' :: ResourceId -> ({ "SizeConstraintSetId" :: ResourceId } -> { "SizeConstraintSetId" :: ResourceId }) -> GetSizeConstraintSetRequest
```

Constructs GetSizeConstraintSetRequest's fields from required parameters

#### `GetSizeConstraintSetResponse`

``` purescript
newtype GetSizeConstraintSetResponse
  = GetSizeConstraintSetResponse { "SizeConstraintSet" :: Maybe (SizeConstraintSet) }
```

##### Instances
``` purescript
Newtype GetSizeConstraintSetResponse _
Generic GetSizeConstraintSetResponse _
Show GetSizeConstraintSetResponse
Decode GetSizeConstraintSetResponse
Encode GetSizeConstraintSetResponse
```

#### `newGetSizeConstraintSetResponse`

``` purescript
newGetSizeConstraintSetResponse :: GetSizeConstraintSetResponse
```

Constructs GetSizeConstraintSetResponse from required parameters

#### `newGetSizeConstraintSetResponse'`

``` purescript
newGetSizeConstraintSetResponse' :: ({ "SizeConstraintSet" :: Maybe (SizeConstraintSet) } -> { "SizeConstraintSet" :: Maybe (SizeConstraintSet) }) -> GetSizeConstraintSetResponse
```

Constructs GetSizeConstraintSetResponse's fields from required parameters

#### `GetSqlInjectionMatchSetRequest`

``` purescript
newtype GetSqlInjectionMatchSetRequest
  = GetSqlInjectionMatchSetRequest { "SqlInjectionMatchSetId" :: ResourceId }
```

<p>A request to get a <a>SqlInjectionMatchSet</a>.</p>

##### Instances
``` purescript
Newtype GetSqlInjectionMatchSetRequest _
Generic GetSqlInjectionMatchSetRequest _
Show GetSqlInjectionMatchSetRequest
Decode GetSqlInjectionMatchSetRequest
Encode GetSqlInjectionMatchSetRequest
```

#### `newGetSqlInjectionMatchSetRequest`

``` purescript
newGetSqlInjectionMatchSetRequest :: ResourceId -> GetSqlInjectionMatchSetRequest
```

Constructs GetSqlInjectionMatchSetRequest from required parameters

#### `newGetSqlInjectionMatchSetRequest'`

``` purescript
newGetSqlInjectionMatchSetRequest' :: ResourceId -> ({ "SqlInjectionMatchSetId" :: ResourceId } -> { "SqlInjectionMatchSetId" :: ResourceId }) -> GetSqlInjectionMatchSetRequest
```

Constructs GetSqlInjectionMatchSetRequest's fields from required parameters

#### `GetSqlInjectionMatchSetResponse`

``` purescript
newtype GetSqlInjectionMatchSetResponse
  = GetSqlInjectionMatchSetResponse { "SqlInjectionMatchSet" :: Maybe (SqlInjectionMatchSet) }
```

<p>The response to a <a>GetSqlInjectionMatchSet</a> request.</p>

##### Instances
``` purescript
Newtype GetSqlInjectionMatchSetResponse _
Generic GetSqlInjectionMatchSetResponse _
Show GetSqlInjectionMatchSetResponse
Decode GetSqlInjectionMatchSetResponse
Encode GetSqlInjectionMatchSetResponse
```

#### `newGetSqlInjectionMatchSetResponse`

``` purescript
newGetSqlInjectionMatchSetResponse :: GetSqlInjectionMatchSetResponse
```

Constructs GetSqlInjectionMatchSetResponse from required parameters

#### `newGetSqlInjectionMatchSetResponse'`

``` purescript
newGetSqlInjectionMatchSetResponse' :: ({ "SqlInjectionMatchSet" :: Maybe (SqlInjectionMatchSet) } -> { "SqlInjectionMatchSet" :: Maybe (SqlInjectionMatchSet) }) -> GetSqlInjectionMatchSetResponse
```

Constructs GetSqlInjectionMatchSetResponse's fields from required parameters

#### `GetWebACLForResourceRequest`

``` purescript
newtype GetWebACLForResourceRequest
  = GetWebACLForResourceRequest { "ResourceArn" :: ResourceArn }
```

##### Instances
``` purescript
Newtype GetWebACLForResourceRequest _
Generic GetWebACLForResourceRequest _
Show GetWebACLForResourceRequest
Decode GetWebACLForResourceRequest
Encode GetWebACLForResourceRequest
```

#### `newGetWebACLForResourceRequest`

``` purescript
newGetWebACLForResourceRequest :: ResourceArn -> GetWebACLForResourceRequest
```

Constructs GetWebACLForResourceRequest from required parameters

#### `newGetWebACLForResourceRequest'`

``` purescript
newGetWebACLForResourceRequest' :: ResourceArn -> ({ "ResourceArn" :: ResourceArn } -> { "ResourceArn" :: ResourceArn }) -> GetWebACLForResourceRequest
```

Constructs GetWebACLForResourceRequest's fields from required parameters

#### `GetWebACLForResourceResponse`

``` purescript
newtype GetWebACLForResourceResponse
  = GetWebACLForResourceResponse { "WebACLSummary" :: Maybe (WebACLSummary) }
```

##### Instances
``` purescript
Newtype GetWebACLForResourceResponse _
Generic GetWebACLForResourceResponse _
Show GetWebACLForResourceResponse
Decode GetWebACLForResourceResponse
Encode GetWebACLForResourceResponse
```

#### `newGetWebACLForResourceResponse`

``` purescript
newGetWebACLForResourceResponse :: GetWebACLForResourceResponse
```

Constructs GetWebACLForResourceResponse from required parameters

#### `newGetWebACLForResourceResponse'`

``` purescript
newGetWebACLForResourceResponse' :: ({ "WebACLSummary" :: Maybe (WebACLSummary) } -> { "WebACLSummary" :: Maybe (WebACLSummary) }) -> GetWebACLForResourceResponse
```

Constructs GetWebACLForResourceResponse's fields from required parameters

#### `GetWebACLRequest`

``` purescript
newtype GetWebACLRequest
  = GetWebACLRequest { "WebACLId" :: ResourceId }
```

##### Instances
``` purescript
Newtype GetWebACLRequest _
Generic GetWebACLRequest _
Show GetWebACLRequest
Decode GetWebACLRequest
Encode GetWebACLRequest
```

#### `newGetWebACLRequest`

``` purescript
newGetWebACLRequest :: ResourceId -> GetWebACLRequest
```

Constructs GetWebACLRequest from required parameters

#### `newGetWebACLRequest'`

``` purescript
newGetWebACLRequest' :: ResourceId -> ({ "WebACLId" :: ResourceId } -> { "WebACLId" :: ResourceId }) -> GetWebACLRequest
```

Constructs GetWebACLRequest's fields from required parameters

#### `GetWebACLResponse`

``` purescript
newtype GetWebACLResponse
  = GetWebACLResponse { "WebACL" :: Maybe (WebACL) }
```

##### Instances
``` purescript
Newtype GetWebACLResponse _
Generic GetWebACLResponse _
Show GetWebACLResponse
Decode GetWebACLResponse
Encode GetWebACLResponse
```

#### `newGetWebACLResponse`

``` purescript
newGetWebACLResponse :: GetWebACLResponse
```

Constructs GetWebACLResponse from required parameters

#### `newGetWebACLResponse'`

``` purescript
newGetWebACLResponse' :: ({ "WebACL" :: Maybe (WebACL) } -> { "WebACL" :: Maybe (WebACL) }) -> GetWebACLResponse
```

Constructs GetWebACLResponse's fields from required parameters

#### `GetXssMatchSetRequest`

``` purescript
newtype GetXssMatchSetRequest
  = GetXssMatchSetRequest { "XssMatchSetId" :: ResourceId }
```

<p>A request to get an <a>XssMatchSet</a>.</p>

##### Instances
``` purescript
Newtype GetXssMatchSetRequest _
Generic GetXssMatchSetRequest _
Show GetXssMatchSetRequest
Decode GetXssMatchSetRequest
Encode GetXssMatchSetRequest
```

#### `newGetXssMatchSetRequest`

``` purescript
newGetXssMatchSetRequest :: ResourceId -> GetXssMatchSetRequest
```

Constructs GetXssMatchSetRequest from required parameters

#### `newGetXssMatchSetRequest'`

``` purescript
newGetXssMatchSetRequest' :: ResourceId -> ({ "XssMatchSetId" :: ResourceId } -> { "XssMatchSetId" :: ResourceId }) -> GetXssMatchSetRequest
```

Constructs GetXssMatchSetRequest's fields from required parameters

#### `GetXssMatchSetResponse`

``` purescript
newtype GetXssMatchSetResponse
  = GetXssMatchSetResponse { "XssMatchSet" :: Maybe (XssMatchSet) }
```

<p>The response to a <a>GetXssMatchSet</a> request.</p>

##### Instances
``` purescript
Newtype GetXssMatchSetResponse _
Generic GetXssMatchSetResponse _
Show GetXssMatchSetResponse
Decode GetXssMatchSetResponse
Encode GetXssMatchSetResponse
```

#### `newGetXssMatchSetResponse`

``` purescript
newGetXssMatchSetResponse :: GetXssMatchSetResponse
```

Constructs GetXssMatchSetResponse from required parameters

#### `newGetXssMatchSetResponse'`

``` purescript
newGetXssMatchSetResponse' :: ({ "XssMatchSet" :: Maybe (XssMatchSet) } -> { "XssMatchSet" :: Maybe (XssMatchSet) }) -> GetXssMatchSetResponse
```

Constructs GetXssMatchSetResponse's fields from required parameters

#### `HTTPHeader`

``` purescript
newtype HTTPHeader
  = HTTPHeader { "Name" :: Maybe (HeaderName), "Value" :: Maybe (HeaderValue) }
```

<p>The response from a <a>GetSampledRequests</a> request includes an <code>HTTPHeader</code> complex type that appears as <code>Headers</code> in the response syntax. <code>HTTPHeader</code> contains the names and values of all of the headers that appear in one of the web requests that were returned by <code>GetSampledRequests</code>. </p>

##### Instances
``` purescript
Newtype HTTPHeader _
Generic HTTPHeader _
Show HTTPHeader
Decode HTTPHeader
Encode HTTPHeader
```

#### `newHTTPHeader`

``` purescript
newHTTPHeader :: HTTPHeader
```

Constructs HTTPHeader from required parameters

#### `newHTTPHeader'`

``` purescript
newHTTPHeader' :: ({ "Name" :: Maybe (HeaderName), "Value" :: Maybe (HeaderValue) } -> { "Name" :: Maybe (HeaderName), "Value" :: Maybe (HeaderValue) }) -> HTTPHeader
```

Constructs HTTPHeader's fields from required parameters

#### `HTTPHeaders`

``` purescript
newtype HTTPHeaders
  = HTTPHeaders (Array HTTPHeader)
```

##### Instances
``` purescript
Newtype HTTPHeaders _
Generic HTTPHeaders _
Show HTTPHeaders
Decode HTTPHeaders
Encode HTTPHeaders
```

#### `HTTPMethod`

``` purescript
newtype HTTPMethod
  = HTTPMethod String
```

##### Instances
``` purescript
Newtype HTTPMethod _
Generic HTTPMethod _
Show HTTPMethod
Decode HTTPMethod
Encode HTTPMethod
```

#### `HTTPRequest`

``` purescript
newtype HTTPRequest
  = HTTPRequest { "ClientIP" :: Maybe (IPString), "Country" :: Maybe (Country), "URI" :: Maybe (URIString), "Method" :: Maybe (HTTPMethod), "HTTPVersion" :: Maybe (HTTPVersion), "Headers" :: Maybe (HTTPHeaders) }
```

<p>The response from a <a>GetSampledRequests</a> request includes an <code>HTTPRequest</code> complex type that appears as <code>Request</code> in the response syntax. <code>HTTPRequest</code> contains information about one of the web requests that were returned by <code>GetSampledRequests</code>. </p>

##### Instances
``` purescript
Newtype HTTPRequest _
Generic HTTPRequest _
Show HTTPRequest
Decode HTTPRequest
Encode HTTPRequest
```

#### `newHTTPRequest`

``` purescript
newHTTPRequest :: HTTPRequest
```

Constructs HTTPRequest from required parameters

#### `newHTTPRequest'`

``` purescript
newHTTPRequest' :: ({ "ClientIP" :: Maybe (IPString), "Country" :: Maybe (Country), "URI" :: Maybe (URIString), "Method" :: Maybe (HTTPMethod), "HTTPVersion" :: Maybe (HTTPVersion), "Headers" :: Maybe (HTTPHeaders) } -> { "ClientIP" :: Maybe (IPString), "Country" :: Maybe (Country), "URI" :: Maybe (URIString), "Method" :: Maybe (HTTPMethod), "HTTPVersion" :: Maybe (HTTPVersion), "Headers" :: Maybe (HTTPHeaders) }) -> HTTPRequest
```

Constructs HTTPRequest's fields from required parameters

#### `HTTPVersion`

``` purescript
newtype HTTPVersion
  = HTTPVersion String
```

##### Instances
``` purescript
Newtype HTTPVersion _
Generic HTTPVersion _
Show HTTPVersion
Decode HTTPVersion
Encode HTTPVersion
```

#### `HeaderName`

``` purescript
newtype HeaderName
  = HeaderName String
```

##### Instances
``` purescript
Newtype HeaderName _
Generic HeaderName _
Show HeaderName
Decode HeaderName
Encode HeaderName
```

#### `HeaderValue`

``` purescript
newtype HeaderValue
  = HeaderValue String
```

##### Instances
``` purescript
Newtype HeaderValue _
Generic HeaderValue _
Show HeaderValue
Decode HeaderValue
Encode HeaderValue
```

#### `IPSet`

``` purescript
newtype IPSet
  = IPSet { "IPSetId" :: ResourceId, "Name" :: Maybe (ResourceName), "IPSetDescriptors" :: IPSetDescriptors }
```

<p>Contains one or more IP addresses or blocks of IP addresses specified in Classless Inter-Domain Routing (CIDR) notation. AWS WAF supports /8, /16, /24, and /32 IP address ranges for IPv4, and /24, /32, /48, /56, /64 and /128 for IPv6.</p> <p>To specify an individual IP address, you specify the four-part IP address followed by a <code>/32</code>, for example, 192.0.2.0/31. To block a range of IP addresses, you can specify a <code>/128</code>, <code>/64</code>, <code>/56</code>, <code>/48</code>, <code>/32</code>, <code>/24</code>, <code>/16</code>, or <code>/8</code> CIDR. For more information about CIDR notation, see the Wikipedia entry <a href="https://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing">Classless Inter-Domain Routing</a>. </p>

##### Instances
``` purescript
Newtype IPSet _
Generic IPSet _
Show IPSet
Decode IPSet
Encode IPSet
```

#### `newIPSet`

``` purescript
newIPSet :: IPSetDescriptors -> ResourceId -> IPSet
```

Constructs IPSet from required parameters

#### `newIPSet'`

``` purescript
newIPSet' :: IPSetDescriptors -> ResourceId -> ({ "IPSetId" :: ResourceId, "Name" :: Maybe (ResourceName), "IPSetDescriptors" :: IPSetDescriptors } -> { "IPSetId" :: ResourceId, "Name" :: Maybe (ResourceName), "IPSetDescriptors" :: IPSetDescriptors }) -> IPSet
```

Constructs IPSet's fields from required parameters

#### `IPSetDescriptor`

``` purescript
newtype IPSetDescriptor
  = IPSetDescriptor { "Type" :: IPSetDescriptorType, "Value" :: IPSetDescriptorValue }
```

<p>Specifies the IP address type (<code>IPV4</code> or <code>IPV6</code>) and the IP address range (in CIDR format) that web requests originate from.</p>

##### Instances
``` purescript
Newtype IPSetDescriptor _
Generic IPSetDescriptor _
Show IPSetDescriptor
Decode IPSetDescriptor
Encode IPSetDescriptor
```

#### `newIPSetDescriptor`

``` purescript
newIPSetDescriptor :: IPSetDescriptorType -> IPSetDescriptorValue -> IPSetDescriptor
```

Constructs IPSetDescriptor from required parameters

#### `newIPSetDescriptor'`

``` purescript
newIPSetDescriptor' :: IPSetDescriptorType -> IPSetDescriptorValue -> ({ "Type" :: IPSetDescriptorType, "Value" :: IPSetDescriptorValue } -> { "Type" :: IPSetDescriptorType, "Value" :: IPSetDescriptorValue }) -> IPSetDescriptor
```

Constructs IPSetDescriptor's fields from required parameters

#### `IPSetDescriptorType`

``` purescript
newtype IPSetDescriptorType
  = IPSetDescriptorType String
```

##### Instances
``` purescript
Newtype IPSetDescriptorType _
Generic IPSetDescriptorType _
Show IPSetDescriptorType
Decode IPSetDescriptorType
Encode IPSetDescriptorType
```

#### `IPSetDescriptorValue`

``` purescript
newtype IPSetDescriptorValue
  = IPSetDescriptorValue String
```

##### Instances
``` purescript
Newtype IPSetDescriptorValue _
Generic IPSetDescriptorValue _
Show IPSetDescriptorValue
Decode IPSetDescriptorValue
Encode IPSetDescriptorValue
```

#### `IPSetDescriptors`

``` purescript
newtype IPSetDescriptors
  = IPSetDescriptors (Array IPSetDescriptor)
```

##### Instances
``` purescript
Newtype IPSetDescriptors _
Generic IPSetDescriptors _
Show IPSetDescriptors
Decode IPSetDescriptors
Encode IPSetDescriptors
```

#### `IPSetSummaries`

``` purescript
newtype IPSetSummaries
  = IPSetSummaries (Array IPSetSummary)
```

##### Instances
``` purescript
Newtype IPSetSummaries _
Generic IPSetSummaries _
Show IPSetSummaries
Decode IPSetSummaries
Encode IPSetSummaries
```

#### `IPSetSummary`

``` purescript
newtype IPSetSummary
  = IPSetSummary { "IPSetId" :: ResourceId, "Name" :: ResourceName }
```

<p>Contains the identifier and the name of the <code>IPSet</code>.</p>

##### Instances
``` purescript
Newtype IPSetSummary _
Generic IPSetSummary _
Show IPSetSummary
Decode IPSetSummary
Encode IPSetSummary
```

#### `newIPSetSummary`

``` purescript
newIPSetSummary :: ResourceId -> ResourceName -> IPSetSummary
```

Constructs IPSetSummary from required parameters

#### `newIPSetSummary'`

``` purescript
newIPSetSummary' :: ResourceId -> ResourceName -> ({ "IPSetId" :: ResourceId, "Name" :: ResourceName } -> { "IPSetId" :: ResourceId, "Name" :: ResourceName }) -> IPSetSummary
```

Constructs IPSetSummary's fields from required parameters

#### `IPSetUpdate`

``` purescript
newtype IPSetUpdate
  = IPSetUpdate { "Action" :: ChangeAction, "IPSetDescriptor" :: IPSetDescriptor }
```

<p>Specifies the type of update to perform to an <a>IPSet</a> with <a>UpdateIPSet</a>.</p>

##### Instances
``` purescript
Newtype IPSetUpdate _
Generic IPSetUpdate _
Show IPSetUpdate
Decode IPSetUpdate
Encode IPSetUpdate
```

#### `newIPSetUpdate`

``` purescript
newIPSetUpdate :: ChangeAction -> IPSetDescriptor -> IPSetUpdate
```

Constructs IPSetUpdate from required parameters

#### `newIPSetUpdate'`

``` purescript
newIPSetUpdate' :: ChangeAction -> IPSetDescriptor -> ({ "Action" :: ChangeAction, "IPSetDescriptor" :: IPSetDescriptor } -> { "Action" :: ChangeAction, "IPSetDescriptor" :: IPSetDescriptor }) -> IPSetUpdate
```

Constructs IPSetUpdate's fields from required parameters

#### `IPSetUpdates`

``` purescript
newtype IPSetUpdates
  = IPSetUpdates (Array IPSetUpdate)
```

##### Instances
``` purescript
Newtype IPSetUpdates _
Generic IPSetUpdates _
Show IPSetUpdates
Decode IPSetUpdates
Encode IPSetUpdates
```

#### `IPString`

``` purescript
newtype IPString
  = IPString String
```

##### Instances
``` purescript
Newtype IPString _
Generic IPString _
Show IPString
Decode IPString
Encode IPString
```

#### `ListActivatedRulesInRuleGroupRequest`

``` purescript
newtype ListActivatedRulesInRuleGroupRequest
  = ListActivatedRulesInRuleGroupRequest { "RuleGroupId" :: Maybe (ResourceId), "NextMarker" :: Maybe (NextMarker), "Limit" :: Maybe (PaginationLimit) }
```

##### Instances
``` purescript
Newtype ListActivatedRulesInRuleGroupRequest _
Generic ListActivatedRulesInRuleGroupRequest _
Show ListActivatedRulesInRuleGroupRequest
Decode ListActivatedRulesInRuleGroupRequest
Encode ListActivatedRulesInRuleGroupRequest
```

#### `newListActivatedRulesInRuleGroupRequest`

``` purescript
newListActivatedRulesInRuleGroupRequest :: ListActivatedRulesInRuleGroupRequest
```

Constructs ListActivatedRulesInRuleGroupRequest from required parameters

#### `newListActivatedRulesInRuleGroupRequest'`

``` purescript
newListActivatedRulesInRuleGroupRequest' :: ({ "RuleGroupId" :: Maybe (ResourceId), "NextMarker" :: Maybe (NextMarker), "Limit" :: Maybe (PaginationLimit) } -> { "RuleGroupId" :: Maybe (ResourceId), "NextMarker" :: Maybe (NextMarker), "Limit" :: Maybe (PaginationLimit) }) -> ListActivatedRulesInRuleGroupRequest
```

Constructs ListActivatedRulesInRuleGroupRequest's fields from required parameters

#### `ListActivatedRulesInRuleGroupResponse`

``` purescript
newtype ListActivatedRulesInRuleGroupResponse
  = ListActivatedRulesInRuleGroupResponse { "NextMarker" :: Maybe (NextMarker), "ActivatedRules" :: Maybe (ActivatedRules) }
```

##### Instances
``` purescript
Newtype ListActivatedRulesInRuleGroupResponse _
Generic ListActivatedRulesInRuleGroupResponse _
Show ListActivatedRulesInRuleGroupResponse
Decode ListActivatedRulesInRuleGroupResponse
Encode ListActivatedRulesInRuleGroupResponse
```

#### `newListActivatedRulesInRuleGroupResponse`

``` purescript
newListActivatedRulesInRuleGroupResponse :: ListActivatedRulesInRuleGroupResponse
```

Constructs ListActivatedRulesInRuleGroupResponse from required parameters

#### `newListActivatedRulesInRuleGroupResponse'`

``` purescript
newListActivatedRulesInRuleGroupResponse' :: ({ "NextMarker" :: Maybe (NextMarker), "ActivatedRules" :: Maybe (ActivatedRules) } -> { "NextMarker" :: Maybe (NextMarker), "ActivatedRules" :: Maybe (ActivatedRules) }) -> ListActivatedRulesInRuleGroupResponse
```

Constructs ListActivatedRulesInRuleGroupResponse's fields from required parameters

#### `ListByteMatchSetsRequest`

``` purescript
newtype ListByteMatchSetsRequest
  = ListByteMatchSetsRequest { "NextMarker" :: Maybe (NextMarker), "Limit" :: Maybe (PaginationLimit) }
```

##### Instances
``` purescript
Newtype ListByteMatchSetsRequest _
Generic ListByteMatchSetsRequest _
Show ListByteMatchSetsRequest
Decode ListByteMatchSetsRequest
Encode ListByteMatchSetsRequest
```

#### `newListByteMatchSetsRequest`

``` purescript
newListByteMatchSetsRequest :: ListByteMatchSetsRequest
```

Constructs ListByteMatchSetsRequest from required parameters

#### `newListByteMatchSetsRequest'`

``` purescript
newListByteMatchSetsRequest' :: ({ "NextMarker" :: Maybe (NextMarker), "Limit" :: Maybe (PaginationLimit) } -> { "NextMarker" :: Maybe (NextMarker), "Limit" :: Maybe (PaginationLimit) }) -> ListByteMatchSetsRequest
```

Constructs ListByteMatchSetsRequest's fields from required parameters

#### `ListByteMatchSetsResponse`

``` purescript
newtype ListByteMatchSetsResponse
  = ListByteMatchSetsResponse { "NextMarker" :: Maybe (NextMarker), "ByteMatchSets" :: Maybe (ByteMatchSetSummaries) }
```

##### Instances
``` purescript
Newtype ListByteMatchSetsResponse _
Generic ListByteMatchSetsResponse _
Show ListByteMatchSetsResponse
Decode ListByteMatchSetsResponse
Encode ListByteMatchSetsResponse
```

#### `newListByteMatchSetsResponse`

``` purescript
newListByteMatchSetsResponse :: ListByteMatchSetsResponse
```

Constructs ListByteMatchSetsResponse from required parameters

#### `newListByteMatchSetsResponse'`

``` purescript
newListByteMatchSetsResponse' :: ({ "NextMarker" :: Maybe (NextMarker), "ByteMatchSets" :: Maybe (ByteMatchSetSummaries) } -> { "NextMarker" :: Maybe (NextMarker), "ByteMatchSets" :: Maybe (ByteMatchSetSummaries) }) -> ListByteMatchSetsResponse
```

Constructs ListByteMatchSetsResponse's fields from required parameters

#### `ListGeoMatchSetsRequest`

``` purescript
newtype ListGeoMatchSetsRequest
  = ListGeoMatchSetsRequest { "NextMarker" :: Maybe (NextMarker), "Limit" :: Maybe (PaginationLimit) }
```

##### Instances
``` purescript
Newtype ListGeoMatchSetsRequest _
Generic ListGeoMatchSetsRequest _
Show ListGeoMatchSetsRequest
Decode ListGeoMatchSetsRequest
Encode ListGeoMatchSetsRequest
```

#### `newListGeoMatchSetsRequest`

``` purescript
newListGeoMatchSetsRequest :: ListGeoMatchSetsRequest
```

Constructs ListGeoMatchSetsRequest from required parameters

#### `newListGeoMatchSetsRequest'`

``` purescript
newListGeoMatchSetsRequest' :: ({ "NextMarker" :: Maybe (NextMarker), "Limit" :: Maybe (PaginationLimit) } -> { "NextMarker" :: Maybe (NextMarker), "Limit" :: Maybe (PaginationLimit) }) -> ListGeoMatchSetsRequest
```

Constructs ListGeoMatchSetsRequest's fields from required parameters

#### `ListGeoMatchSetsResponse`

``` purescript
newtype ListGeoMatchSetsResponse
  = ListGeoMatchSetsResponse { "NextMarker" :: Maybe (NextMarker), "GeoMatchSets" :: Maybe (GeoMatchSetSummaries) }
```

##### Instances
``` purescript
Newtype ListGeoMatchSetsResponse _
Generic ListGeoMatchSetsResponse _
Show ListGeoMatchSetsResponse
Decode ListGeoMatchSetsResponse
Encode ListGeoMatchSetsResponse
```

#### `newListGeoMatchSetsResponse`

``` purescript
newListGeoMatchSetsResponse :: ListGeoMatchSetsResponse
```

Constructs ListGeoMatchSetsResponse from required parameters

#### `newListGeoMatchSetsResponse'`

``` purescript
newListGeoMatchSetsResponse' :: ({ "NextMarker" :: Maybe (NextMarker), "GeoMatchSets" :: Maybe (GeoMatchSetSummaries) } -> { "NextMarker" :: Maybe (NextMarker), "GeoMatchSets" :: Maybe (GeoMatchSetSummaries) }) -> ListGeoMatchSetsResponse
```

Constructs ListGeoMatchSetsResponse's fields from required parameters

#### `ListIPSetsRequest`

``` purescript
newtype ListIPSetsRequest
  = ListIPSetsRequest { "NextMarker" :: Maybe (NextMarker), "Limit" :: Maybe (PaginationLimit) }
```

##### Instances
``` purescript
Newtype ListIPSetsRequest _
Generic ListIPSetsRequest _
Show ListIPSetsRequest
Decode ListIPSetsRequest
Encode ListIPSetsRequest
```

#### `newListIPSetsRequest`

``` purescript
newListIPSetsRequest :: ListIPSetsRequest
```

Constructs ListIPSetsRequest from required parameters

#### `newListIPSetsRequest'`

``` purescript
newListIPSetsRequest' :: ({ "NextMarker" :: Maybe (NextMarker), "Limit" :: Maybe (PaginationLimit) } -> { "NextMarker" :: Maybe (NextMarker), "Limit" :: Maybe (PaginationLimit) }) -> ListIPSetsRequest
```

Constructs ListIPSetsRequest's fields from required parameters

#### `ListIPSetsResponse`

``` purescript
newtype ListIPSetsResponse
  = ListIPSetsResponse { "NextMarker" :: Maybe (NextMarker), "IPSets" :: Maybe (IPSetSummaries) }
```

##### Instances
``` purescript
Newtype ListIPSetsResponse _
Generic ListIPSetsResponse _
Show ListIPSetsResponse
Decode ListIPSetsResponse
Encode ListIPSetsResponse
```

#### `newListIPSetsResponse`

``` purescript
newListIPSetsResponse :: ListIPSetsResponse
```

Constructs ListIPSetsResponse from required parameters

#### `newListIPSetsResponse'`

``` purescript
newListIPSetsResponse' :: ({ "NextMarker" :: Maybe (NextMarker), "IPSets" :: Maybe (IPSetSummaries) } -> { "NextMarker" :: Maybe (NextMarker), "IPSets" :: Maybe (IPSetSummaries) }) -> ListIPSetsResponse
```

Constructs ListIPSetsResponse's fields from required parameters

#### `ListRateBasedRulesRequest`

``` purescript
newtype ListRateBasedRulesRequest
  = ListRateBasedRulesRequest { "NextMarker" :: Maybe (NextMarker), "Limit" :: Maybe (PaginationLimit) }
```

##### Instances
``` purescript
Newtype ListRateBasedRulesRequest _
Generic ListRateBasedRulesRequest _
Show ListRateBasedRulesRequest
Decode ListRateBasedRulesRequest
Encode ListRateBasedRulesRequest
```

#### `newListRateBasedRulesRequest`

``` purescript
newListRateBasedRulesRequest :: ListRateBasedRulesRequest
```

Constructs ListRateBasedRulesRequest from required parameters

#### `newListRateBasedRulesRequest'`

``` purescript
newListRateBasedRulesRequest' :: ({ "NextMarker" :: Maybe (NextMarker), "Limit" :: Maybe (PaginationLimit) } -> { "NextMarker" :: Maybe (NextMarker), "Limit" :: Maybe (PaginationLimit) }) -> ListRateBasedRulesRequest
```

Constructs ListRateBasedRulesRequest's fields from required parameters

#### `ListRateBasedRulesResponse`

``` purescript
newtype ListRateBasedRulesResponse
  = ListRateBasedRulesResponse { "NextMarker" :: Maybe (NextMarker), "Rules" :: Maybe (RuleSummaries) }
```

##### Instances
``` purescript
Newtype ListRateBasedRulesResponse _
Generic ListRateBasedRulesResponse _
Show ListRateBasedRulesResponse
Decode ListRateBasedRulesResponse
Encode ListRateBasedRulesResponse
```

#### `newListRateBasedRulesResponse`

``` purescript
newListRateBasedRulesResponse :: ListRateBasedRulesResponse
```

Constructs ListRateBasedRulesResponse from required parameters

#### `newListRateBasedRulesResponse'`

``` purescript
newListRateBasedRulesResponse' :: ({ "NextMarker" :: Maybe (NextMarker), "Rules" :: Maybe (RuleSummaries) } -> { "NextMarker" :: Maybe (NextMarker), "Rules" :: Maybe (RuleSummaries) }) -> ListRateBasedRulesResponse
```

Constructs ListRateBasedRulesResponse's fields from required parameters

#### `ListRegexMatchSetsRequest`

``` purescript
newtype ListRegexMatchSetsRequest
  = ListRegexMatchSetsRequest { "NextMarker" :: Maybe (NextMarker), "Limit" :: Maybe (PaginationLimit) }
```

##### Instances
``` purescript
Newtype ListRegexMatchSetsRequest _
Generic ListRegexMatchSetsRequest _
Show ListRegexMatchSetsRequest
Decode ListRegexMatchSetsRequest
Encode ListRegexMatchSetsRequest
```

#### `newListRegexMatchSetsRequest`

``` purescript
newListRegexMatchSetsRequest :: ListRegexMatchSetsRequest
```

Constructs ListRegexMatchSetsRequest from required parameters

#### `newListRegexMatchSetsRequest'`

``` purescript
newListRegexMatchSetsRequest' :: ({ "NextMarker" :: Maybe (NextMarker), "Limit" :: Maybe (PaginationLimit) } -> { "NextMarker" :: Maybe (NextMarker), "Limit" :: Maybe (PaginationLimit) }) -> ListRegexMatchSetsRequest
```

Constructs ListRegexMatchSetsRequest's fields from required parameters

#### `ListRegexMatchSetsResponse`

``` purescript
newtype ListRegexMatchSetsResponse
  = ListRegexMatchSetsResponse { "NextMarker" :: Maybe (NextMarker), "RegexMatchSets" :: Maybe (RegexMatchSetSummaries) }
```

##### Instances
``` purescript
Newtype ListRegexMatchSetsResponse _
Generic ListRegexMatchSetsResponse _
Show ListRegexMatchSetsResponse
Decode ListRegexMatchSetsResponse
Encode ListRegexMatchSetsResponse
```

#### `newListRegexMatchSetsResponse`

``` purescript
newListRegexMatchSetsResponse :: ListRegexMatchSetsResponse
```

Constructs ListRegexMatchSetsResponse from required parameters

#### `newListRegexMatchSetsResponse'`

``` purescript
newListRegexMatchSetsResponse' :: ({ "NextMarker" :: Maybe (NextMarker), "RegexMatchSets" :: Maybe (RegexMatchSetSummaries) } -> { "NextMarker" :: Maybe (NextMarker), "RegexMatchSets" :: Maybe (RegexMatchSetSummaries) }) -> ListRegexMatchSetsResponse
```

Constructs ListRegexMatchSetsResponse's fields from required parameters

#### `ListRegexPatternSetsRequest`

``` purescript
newtype ListRegexPatternSetsRequest
  = ListRegexPatternSetsRequest { "NextMarker" :: Maybe (NextMarker), "Limit" :: Maybe (PaginationLimit) }
```

##### Instances
``` purescript
Newtype ListRegexPatternSetsRequest _
Generic ListRegexPatternSetsRequest _
Show ListRegexPatternSetsRequest
Decode ListRegexPatternSetsRequest
Encode ListRegexPatternSetsRequest
```

#### `newListRegexPatternSetsRequest`

``` purescript
newListRegexPatternSetsRequest :: ListRegexPatternSetsRequest
```

Constructs ListRegexPatternSetsRequest from required parameters

#### `newListRegexPatternSetsRequest'`

``` purescript
newListRegexPatternSetsRequest' :: ({ "NextMarker" :: Maybe (NextMarker), "Limit" :: Maybe (PaginationLimit) } -> { "NextMarker" :: Maybe (NextMarker), "Limit" :: Maybe (PaginationLimit) }) -> ListRegexPatternSetsRequest
```

Constructs ListRegexPatternSetsRequest's fields from required parameters

#### `ListRegexPatternSetsResponse`

``` purescript
newtype ListRegexPatternSetsResponse
  = ListRegexPatternSetsResponse { "NextMarker" :: Maybe (NextMarker), "RegexPatternSets" :: Maybe (RegexPatternSetSummaries) }
```

##### Instances
``` purescript
Newtype ListRegexPatternSetsResponse _
Generic ListRegexPatternSetsResponse _
Show ListRegexPatternSetsResponse
Decode ListRegexPatternSetsResponse
Encode ListRegexPatternSetsResponse
```

#### `newListRegexPatternSetsResponse`

``` purescript
newListRegexPatternSetsResponse :: ListRegexPatternSetsResponse
```

Constructs ListRegexPatternSetsResponse from required parameters

#### `newListRegexPatternSetsResponse'`

``` purescript
newListRegexPatternSetsResponse' :: ({ "NextMarker" :: Maybe (NextMarker), "RegexPatternSets" :: Maybe (RegexPatternSetSummaries) } -> { "NextMarker" :: Maybe (NextMarker), "RegexPatternSets" :: Maybe (RegexPatternSetSummaries) }) -> ListRegexPatternSetsResponse
```

Constructs ListRegexPatternSetsResponse's fields from required parameters

#### `ListResourcesForWebACLRequest`

``` purescript
newtype ListResourcesForWebACLRequest
  = ListResourcesForWebACLRequest { "WebACLId" :: ResourceId }
```

##### Instances
``` purescript
Newtype ListResourcesForWebACLRequest _
Generic ListResourcesForWebACLRequest _
Show ListResourcesForWebACLRequest
Decode ListResourcesForWebACLRequest
Encode ListResourcesForWebACLRequest
```

#### `newListResourcesForWebACLRequest`

``` purescript
newListResourcesForWebACLRequest :: ResourceId -> ListResourcesForWebACLRequest
```

Constructs ListResourcesForWebACLRequest from required parameters

#### `newListResourcesForWebACLRequest'`

``` purescript
newListResourcesForWebACLRequest' :: ResourceId -> ({ "WebACLId" :: ResourceId } -> { "WebACLId" :: ResourceId }) -> ListResourcesForWebACLRequest
```

Constructs ListResourcesForWebACLRequest's fields from required parameters

#### `ListResourcesForWebACLResponse`

``` purescript
newtype ListResourcesForWebACLResponse
  = ListResourcesForWebACLResponse { "ResourceArns" :: Maybe (ResourceArns) }
```

##### Instances
``` purescript
Newtype ListResourcesForWebACLResponse _
Generic ListResourcesForWebACLResponse _
Show ListResourcesForWebACLResponse
Decode ListResourcesForWebACLResponse
Encode ListResourcesForWebACLResponse
```

#### `newListResourcesForWebACLResponse`

``` purescript
newListResourcesForWebACLResponse :: ListResourcesForWebACLResponse
```

Constructs ListResourcesForWebACLResponse from required parameters

#### `newListResourcesForWebACLResponse'`

``` purescript
newListResourcesForWebACLResponse' :: ({ "ResourceArns" :: Maybe (ResourceArns) } -> { "ResourceArns" :: Maybe (ResourceArns) }) -> ListResourcesForWebACLResponse
```

Constructs ListResourcesForWebACLResponse's fields from required parameters

#### `ListRuleGroupsRequest`

``` purescript
newtype ListRuleGroupsRequest
  = ListRuleGroupsRequest { "NextMarker" :: Maybe (NextMarker), "Limit" :: Maybe (PaginationLimit) }
```

##### Instances
``` purescript
Newtype ListRuleGroupsRequest _
Generic ListRuleGroupsRequest _
Show ListRuleGroupsRequest
Decode ListRuleGroupsRequest
Encode ListRuleGroupsRequest
```

#### `newListRuleGroupsRequest`

``` purescript
newListRuleGroupsRequest :: ListRuleGroupsRequest
```

Constructs ListRuleGroupsRequest from required parameters

#### `newListRuleGroupsRequest'`

``` purescript
newListRuleGroupsRequest' :: ({ "NextMarker" :: Maybe (NextMarker), "Limit" :: Maybe (PaginationLimit) } -> { "NextMarker" :: Maybe (NextMarker), "Limit" :: Maybe (PaginationLimit) }) -> ListRuleGroupsRequest
```

Constructs ListRuleGroupsRequest's fields from required parameters

#### `ListRuleGroupsResponse`

``` purescript
newtype ListRuleGroupsResponse
  = ListRuleGroupsResponse { "NextMarker" :: Maybe (NextMarker), "RuleGroups" :: Maybe (RuleGroupSummaries) }
```

##### Instances
``` purescript
Newtype ListRuleGroupsResponse _
Generic ListRuleGroupsResponse _
Show ListRuleGroupsResponse
Decode ListRuleGroupsResponse
Encode ListRuleGroupsResponse
```

#### `newListRuleGroupsResponse`

``` purescript
newListRuleGroupsResponse :: ListRuleGroupsResponse
```

Constructs ListRuleGroupsResponse from required parameters

#### `newListRuleGroupsResponse'`

``` purescript
newListRuleGroupsResponse' :: ({ "NextMarker" :: Maybe (NextMarker), "RuleGroups" :: Maybe (RuleGroupSummaries) } -> { "NextMarker" :: Maybe (NextMarker), "RuleGroups" :: Maybe (RuleGroupSummaries) }) -> ListRuleGroupsResponse
```

Constructs ListRuleGroupsResponse's fields from required parameters

#### `ListRulesRequest`

``` purescript
newtype ListRulesRequest
  = ListRulesRequest { "NextMarker" :: Maybe (NextMarker), "Limit" :: Maybe (PaginationLimit) }
```

##### Instances
``` purescript
Newtype ListRulesRequest _
Generic ListRulesRequest _
Show ListRulesRequest
Decode ListRulesRequest
Encode ListRulesRequest
```

#### `newListRulesRequest`

``` purescript
newListRulesRequest :: ListRulesRequest
```

Constructs ListRulesRequest from required parameters

#### `newListRulesRequest'`

``` purescript
newListRulesRequest' :: ({ "NextMarker" :: Maybe (NextMarker), "Limit" :: Maybe (PaginationLimit) } -> { "NextMarker" :: Maybe (NextMarker), "Limit" :: Maybe (PaginationLimit) }) -> ListRulesRequest
```

Constructs ListRulesRequest's fields from required parameters

#### `ListRulesResponse`

``` purescript
newtype ListRulesResponse
  = ListRulesResponse { "NextMarker" :: Maybe (NextMarker), "Rules" :: Maybe (RuleSummaries) }
```

##### Instances
``` purescript
Newtype ListRulesResponse _
Generic ListRulesResponse _
Show ListRulesResponse
Decode ListRulesResponse
Encode ListRulesResponse
```

#### `newListRulesResponse`

``` purescript
newListRulesResponse :: ListRulesResponse
```

Constructs ListRulesResponse from required parameters

#### `newListRulesResponse'`

``` purescript
newListRulesResponse' :: ({ "NextMarker" :: Maybe (NextMarker), "Rules" :: Maybe (RuleSummaries) } -> { "NextMarker" :: Maybe (NextMarker), "Rules" :: Maybe (RuleSummaries) }) -> ListRulesResponse
```

Constructs ListRulesResponse's fields from required parameters

#### `ListSizeConstraintSetsRequest`

``` purescript
newtype ListSizeConstraintSetsRequest
  = ListSizeConstraintSetsRequest { "NextMarker" :: Maybe (NextMarker), "Limit" :: Maybe (PaginationLimit) }
```

##### Instances
``` purescript
Newtype ListSizeConstraintSetsRequest _
Generic ListSizeConstraintSetsRequest _
Show ListSizeConstraintSetsRequest
Decode ListSizeConstraintSetsRequest
Encode ListSizeConstraintSetsRequest
```

#### `newListSizeConstraintSetsRequest`

``` purescript
newListSizeConstraintSetsRequest :: ListSizeConstraintSetsRequest
```

Constructs ListSizeConstraintSetsRequest from required parameters

#### `newListSizeConstraintSetsRequest'`

``` purescript
newListSizeConstraintSetsRequest' :: ({ "NextMarker" :: Maybe (NextMarker), "Limit" :: Maybe (PaginationLimit) } -> { "NextMarker" :: Maybe (NextMarker), "Limit" :: Maybe (PaginationLimit) }) -> ListSizeConstraintSetsRequest
```

Constructs ListSizeConstraintSetsRequest's fields from required parameters

#### `ListSizeConstraintSetsResponse`

``` purescript
newtype ListSizeConstraintSetsResponse
  = ListSizeConstraintSetsResponse { "NextMarker" :: Maybe (NextMarker), "SizeConstraintSets" :: Maybe (SizeConstraintSetSummaries) }
```

##### Instances
``` purescript
Newtype ListSizeConstraintSetsResponse _
Generic ListSizeConstraintSetsResponse _
Show ListSizeConstraintSetsResponse
Decode ListSizeConstraintSetsResponse
Encode ListSizeConstraintSetsResponse
```

#### `newListSizeConstraintSetsResponse`

``` purescript
newListSizeConstraintSetsResponse :: ListSizeConstraintSetsResponse
```

Constructs ListSizeConstraintSetsResponse from required parameters

#### `newListSizeConstraintSetsResponse'`

``` purescript
newListSizeConstraintSetsResponse' :: ({ "NextMarker" :: Maybe (NextMarker), "SizeConstraintSets" :: Maybe (SizeConstraintSetSummaries) } -> { "NextMarker" :: Maybe (NextMarker), "SizeConstraintSets" :: Maybe (SizeConstraintSetSummaries) }) -> ListSizeConstraintSetsResponse
```

Constructs ListSizeConstraintSetsResponse's fields from required parameters

#### `ListSqlInjectionMatchSetsRequest`

``` purescript
newtype ListSqlInjectionMatchSetsRequest
  = ListSqlInjectionMatchSetsRequest { "NextMarker" :: Maybe (NextMarker), "Limit" :: Maybe (PaginationLimit) }
```

<p>A request to list the <a>SqlInjectionMatchSet</a> objects created by the current AWS account.</p>

##### Instances
``` purescript
Newtype ListSqlInjectionMatchSetsRequest _
Generic ListSqlInjectionMatchSetsRequest _
Show ListSqlInjectionMatchSetsRequest
Decode ListSqlInjectionMatchSetsRequest
Encode ListSqlInjectionMatchSetsRequest
```

#### `newListSqlInjectionMatchSetsRequest`

``` purescript
newListSqlInjectionMatchSetsRequest :: ListSqlInjectionMatchSetsRequest
```

Constructs ListSqlInjectionMatchSetsRequest from required parameters

#### `newListSqlInjectionMatchSetsRequest'`

``` purescript
newListSqlInjectionMatchSetsRequest' :: ({ "NextMarker" :: Maybe (NextMarker), "Limit" :: Maybe (PaginationLimit) } -> { "NextMarker" :: Maybe (NextMarker), "Limit" :: Maybe (PaginationLimit) }) -> ListSqlInjectionMatchSetsRequest
```

Constructs ListSqlInjectionMatchSetsRequest's fields from required parameters

#### `ListSqlInjectionMatchSetsResponse`

``` purescript
newtype ListSqlInjectionMatchSetsResponse
  = ListSqlInjectionMatchSetsResponse { "NextMarker" :: Maybe (NextMarker), "SqlInjectionMatchSets" :: Maybe (SqlInjectionMatchSetSummaries) }
```

<p>The response to a <a>ListSqlInjectionMatchSets</a> request.</p>

##### Instances
``` purescript
Newtype ListSqlInjectionMatchSetsResponse _
Generic ListSqlInjectionMatchSetsResponse _
Show ListSqlInjectionMatchSetsResponse
Decode ListSqlInjectionMatchSetsResponse
Encode ListSqlInjectionMatchSetsResponse
```

#### `newListSqlInjectionMatchSetsResponse`

``` purescript
newListSqlInjectionMatchSetsResponse :: ListSqlInjectionMatchSetsResponse
```

Constructs ListSqlInjectionMatchSetsResponse from required parameters

#### `newListSqlInjectionMatchSetsResponse'`

``` purescript
newListSqlInjectionMatchSetsResponse' :: ({ "NextMarker" :: Maybe (NextMarker), "SqlInjectionMatchSets" :: Maybe (SqlInjectionMatchSetSummaries) } -> { "NextMarker" :: Maybe (NextMarker), "SqlInjectionMatchSets" :: Maybe (SqlInjectionMatchSetSummaries) }) -> ListSqlInjectionMatchSetsResponse
```

Constructs ListSqlInjectionMatchSetsResponse's fields from required parameters

#### `ListSubscribedRuleGroupsRequest`

``` purescript
newtype ListSubscribedRuleGroupsRequest
  = ListSubscribedRuleGroupsRequest { "NextMarker" :: Maybe (NextMarker), "Limit" :: Maybe (PaginationLimit) }
```

##### Instances
``` purescript
Newtype ListSubscribedRuleGroupsRequest _
Generic ListSubscribedRuleGroupsRequest _
Show ListSubscribedRuleGroupsRequest
Decode ListSubscribedRuleGroupsRequest
Encode ListSubscribedRuleGroupsRequest
```

#### `newListSubscribedRuleGroupsRequest`

``` purescript
newListSubscribedRuleGroupsRequest :: ListSubscribedRuleGroupsRequest
```

Constructs ListSubscribedRuleGroupsRequest from required parameters

#### `newListSubscribedRuleGroupsRequest'`

``` purescript
newListSubscribedRuleGroupsRequest' :: ({ "NextMarker" :: Maybe (NextMarker), "Limit" :: Maybe (PaginationLimit) } -> { "NextMarker" :: Maybe (NextMarker), "Limit" :: Maybe (PaginationLimit) }) -> ListSubscribedRuleGroupsRequest
```

Constructs ListSubscribedRuleGroupsRequest's fields from required parameters

#### `ListSubscribedRuleGroupsResponse`

``` purescript
newtype ListSubscribedRuleGroupsResponse
  = ListSubscribedRuleGroupsResponse { "NextMarker" :: Maybe (NextMarker), "RuleGroups" :: Maybe (SubscribedRuleGroupSummaries) }
```

##### Instances
``` purescript
Newtype ListSubscribedRuleGroupsResponse _
Generic ListSubscribedRuleGroupsResponse _
Show ListSubscribedRuleGroupsResponse
Decode ListSubscribedRuleGroupsResponse
Encode ListSubscribedRuleGroupsResponse
```

#### `newListSubscribedRuleGroupsResponse`

``` purescript
newListSubscribedRuleGroupsResponse :: ListSubscribedRuleGroupsResponse
```

Constructs ListSubscribedRuleGroupsResponse from required parameters

#### `newListSubscribedRuleGroupsResponse'`

``` purescript
newListSubscribedRuleGroupsResponse' :: ({ "NextMarker" :: Maybe (NextMarker), "RuleGroups" :: Maybe (SubscribedRuleGroupSummaries) } -> { "NextMarker" :: Maybe (NextMarker), "RuleGroups" :: Maybe (SubscribedRuleGroupSummaries) }) -> ListSubscribedRuleGroupsResponse
```

Constructs ListSubscribedRuleGroupsResponse's fields from required parameters

#### `ListWebACLsRequest`

``` purescript
newtype ListWebACLsRequest
  = ListWebACLsRequest { "NextMarker" :: Maybe (NextMarker), "Limit" :: Maybe (PaginationLimit) }
```

##### Instances
``` purescript
Newtype ListWebACLsRequest _
Generic ListWebACLsRequest _
Show ListWebACLsRequest
Decode ListWebACLsRequest
Encode ListWebACLsRequest
```

#### `newListWebACLsRequest`

``` purescript
newListWebACLsRequest :: ListWebACLsRequest
```

Constructs ListWebACLsRequest from required parameters

#### `newListWebACLsRequest'`

``` purescript
newListWebACLsRequest' :: ({ "NextMarker" :: Maybe (NextMarker), "Limit" :: Maybe (PaginationLimit) } -> { "NextMarker" :: Maybe (NextMarker), "Limit" :: Maybe (PaginationLimit) }) -> ListWebACLsRequest
```

Constructs ListWebACLsRequest's fields from required parameters

#### `ListWebACLsResponse`

``` purescript
newtype ListWebACLsResponse
  = ListWebACLsResponse { "NextMarker" :: Maybe (NextMarker), "WebACLs" :: Maybe (WebACLSummaries) }
```

##### Instances
``` purescript
Newtype ListWebACLsResponse _
Generic ListWebACLsResponse _
Show ListWebACLsResponse
Decode ListWebACLsResponse
Encode ListWebACLsResponse
```

#### `newListWebACLsResponse`

``` purescript
newListWebACLsResponse :: ListWebACLsResponse
```

Constructs ListWebACLsResponse from required parameters

#### `newListWebACLsResponse'`

``` purescript
newListWebACLsResponse' :: ({ "NextMarker" :: Maybe (NextMarker), "WebACLs" :: Maybe (WebACLSummaries) } -> { "NextMarker" :: Maybe (NextMarker), "WebACLs" :: Maybe (WebACLSummaries) }) -> ListWebACLsResponse
```

Constructs ListWebACLsResponse's fields from required parameters

#### `ListXssMatchSetsRequest`

``` purescript
newtype ListXssMatchSetsRequest
  = ListXssMatchSetsRequest { "NextMarker" :: Maybe (NextMarker), "Limit" :: Maybe (PaginationLimit) }
```

<p>A request to list the <a>XssMatchSet</a> objects created by the current AWS account.</p>

##### Instances
``` purescript
Newtype ListXssMatchSetsRequest _
Generic ListXssMatchSetsRequest _
Show ListXssMatchSetsRequest
Decode ListXssMatchSetsRequest
Encode ListXssMatchSetsRequest
```

#### `newListXssMatchSetsRequest`

``` purescript
newListXssMatchSetsRequest :: ListXssMatchSetsRequest
```

Constructs ListXssMatchSetsRequest from required parameters

#### `newListXssMatchSetsRequest'`

``` purescript
newListXssMatchSetsRequest' :: ({ "NextMarker" :: Maybe (NextMarker), "Limit" :: Maybe (PaginationLimit) } -> { "NextMarker" :: Maybe (NextMarker), "Limit" :: Maybe (PaginationLimit) }) -> ListXssMatchSetsRequest
```

Constructs ListXssMatchSetsRequest's fields from required parameters

#### `ListXssMatchSetsResponse`

``` purescript
newtype ListXssMatchSetsResponse
  = ListXssMatchSetsResponse { "NextMarker" :: Maybe (NextMarker), "XssMatchSets" :: Maybe (XssMatchSetSummaries) }
```

<p>The response to a <a>ListXssMatchSets</a> request.</p>

##### Instances
``` purescript
Newtype ListXssMatchSetsResponse _
Generic ListXssMatchSetsResponse _
Show ListXssMatchSetsResponse
Decode ListXssMatchSetsResponse
Encode ListXssMatchSetsResponse
```

#### `newListXssMatchSetsResponse`

``` purescript
newListXssMatchSetsResponse :: ListXssMatchSetsResponse
```

Constructs ListXssMatchSetsResponse from required parameters

#### `newListXssMatchSetsResponse'`

``` purescript
newListXssMatchSetsResponse' :: ({ "NextMarker" :: Maybe (NextMarker), "XssMatchSets" :: Maybe (XssMatchSetSummaries) } -> { "NextMarker" :: Maybe (NextMarker), "XssMatchSets" :: Maybe (XssMatchSetSummaries) }) -> ListXssMatchSetsResponse
```

Constructs ListXssMatchSetsResponse's fields from required parameters

#### `ManagedKey`

``` purescript
newtype ManagedKey
  = ManagedKey String
```

##### Instances
``` purescript
Newtype ManagedKey _
Generic ManagedKey _
Show ManagedKey
Decode ManagedKey
Encode ManagedKey
```

#### `ManagedKeys`

``` purescript
newtype ManagedKeys
  = ManagedKeys (Array ManagedKey)
```

##### Instances
``` purescript
Newtype ManagedKeys _
Generic ManagedKeys _
Show ManagedKeys
Decode ManagedKeys
Encode ManagedKeys
```

#### `MatchFieldData`

``` purescript
newtype MatchFieldData
  = MatchFieldData String
```

##### Instances
``` purescript
Newtype MatchFieldData _
Generic MatchFieldData _
Show MatchFieldData
Decode MatchFieldData
Encode MatchFieldData
```

#### `MatchFieldType`

``` purescript
newtype MatchFieldType
  = MatchFieldType String
```

##### Instances
``` purescript
Newtype MatchFieldType _
Generic MatchFieldType _
Show MatchFieldType
Decode MatchFieldType
Encode MatchFieldType
```

#### `MetricName`

``` purescript
newtype MetricName
  = MetricName String
```

##### Instances
``` purescript
Newtype MetricName _
Generic MetricName _
Show MetricName
Decode MetricName
Encode MetricName
```

#### `Negated`

``` purescript
newtype Negated
  = Negated Boolean
```

##### Instances
``` purescript
Newtype Negated _
Generic Negated _
Show Negated
Decode Negated
Encode Negated
```

#### `NextMarker`

``` purescript
newtype NextMarker
  = NextMarker String
```

##### Instances
``` purescript
Newtype NextMarker _
Generic NextMarker _
Show NextMarker
Decode NextMarker
Encode NextMarker
```

#### `PaginationLimit`

``` purescript
newtype PaginationLimit
  = PaginationLimit Int
```

##### Instances
``` purescript
Newtype PaginationLimit _
Generic PaginationLimit _
Show PaginationLimit
Decode PaginationLimit
Encode PaginationLimit
```

#### `ParameterExceptionField`

``` purescript
newtype ParameterExceptionField
  = ParameterExceptionField String
```

##### Instances
``` purescript
Newtype ParameterExceptionField _
Generic ParameterExceptionField _
Show ParameterExceptionField
Decode ParameterExceptionField
Encode ParameterExceptionField
```

#### `ParameterExceptionParameter`

``` purescript
newtype ParameterExceptionParameter
  = ParameterExceptionParameter String
```

##### Instances
``` purescript
Newtype ParameterExceptionParameter _
Generic ParameterExceptionParameter _
Show ParameterExceptionParameter
Decode ParameterExceptionParameter
Encode ParameterExceptionParameter
```

#### `ParameterExceptionReason`

``` purescript
newtype ParameterExceptionReason
  = ParameterExceptionReason String
```

##### Instances
``` purescript
Newtype ParameterExceptionReason _
Generic ParameterExceptionReason _
Show ParameterExceptionReason
Decode ParameterExceptionReason
Encode ParameterExceptionReason
```

#### `PolicyString`

``` purescript
newtype PolicyString
  = PolicyString String
```

##### Instances
``` purescript
Newtype PolicyString _
Generic PolicyString _
Show PolicyString
Decode PolicyString
Encode PolicyString
```

#### `PopulationSize`

``` purescript
newtype PopulationSize
  = PopulationSize Number
```

##### Instances
``` purescript
Newtype PopulationSize _
Generic PopulationSize _
Show PopulationSize
Decode PopulationSize
Encode PopulationSize
```

#### `PositionalConstraint`

``` purescript
newtype PositionalConstraint
  = PositionalConstraint String
```

##### Instances
``` purescript
Newtype PositionalConstraint _
Generic PositionalConstraint _
Show PositionalConstraint
Decode PositionalConstraint
Encode PositionalConstraint
```

#### `Predicate`

``` purescript
newtype Predicate
  = Predicate { "Negated" :: Negated, "Type" :: PredicateType, "DataId" :: ResourceId }
```

<p>Specifies the <a>ByteMatchSet</a>, <a>IPSet</a>, <a>SqlInjectionMatchSet</a>, <a>XssMatchSet</a>, <a>RegexMatchSet</a>, <a>GeoMatchSet</a>, and <a>SizeConstraintSet</a> objects that you want to add to a <code>Rule</code> and, for each object, indicates whether you want to negate the settings, for example, requests that do NOT originate from the IP address 192.0.2.44. </p>

##### Instances
``` purescript
Newtype Predicate _
Generic Predicate _
Show Predicate
Decode Predicate
Encode Predicate
```

#### `newPredicate`

``` purescript
newPredicate :: ResourceId -> Negated -> PredicateType -> Predicate
```

Constructs Predicate from required parameters

#### `newPredicate'`

``` purescript
newPredicate' :: ResourceId -> Negated -> PredicateType -> ({ "Negated" :: Negated, "Type" :: PredicateType, "DataId" :: ResourceId } -> { "Negated" :: Negated, "Type" :: PredicateType, "DataId" :: ResourceId }) -> Predicate
```

Constructs Predicate's fields from required parameters

#### `PredicateType`

``` purescript
newtype PredicateType
  = PredicateType String
```

##### Instances
``` purescript
Newtype PredicateType _
Generic PredicateType _
Show PredicateType
Decode PredicateType
Encode PredicateType
```

#### `Predicates`

``` purescript
newtype Predicates
  = Predicates (Array Predicate)
```

##### Instances
``` purescript
Newtype Predicates _
Generic Predicates _
Show Predicates
Decode Predicates
Encode Predicates
```

#### `PutPermissionPolicyRequest`

``` purescript
newtype PutPermissionPolicyRequest
  = PutPermissionPolicyRequest { "ResourceArn" :: ResourceArn, "Policy" :: PolicyString }
```

##### Instances
``` purescript
Newtype PutPermissionPolicyRequest _
Generic PutPermissionPolicyRequest _
Show PutPermissionPolicyRequest
Decode PutPermissionPolicyRequest
Encode PutPermissionPolicyRequest
```

#### `newPutPermissionPolicyRequest`

``` purescript
newPutPermissionPolicyRequest :: PolicyString -> ResourceArn -> PutPermissionPolicyRequest
```

Constructs PutPermissionPolicyRequest from required parameters

#### `newPutPermissionPolicyRequest'`

``` purescript
newPutPermissionPolicyRequest' :: PolicyString -> ResourceArn -> ({ "ResourceArn" :: ResourceArn, "Policy" :: PolicyString } -> { "ResourceArn" :: ResourceArn, "Policy" :: PolicyString }) -> PutPermissionPolicyRequest
```

Constructs PutPermissionPolicyRequest's fields from required parameters

#### `PutPermissionPolicyResponse`

``` purescript
newtype PutPermissionPolicyResponse
  = PutPermissionPolicyResponse NoArguments
```

##### Instances
``` purescript
Newtype PutPermissionPolicyResponse _
Generic PutPermissionPolicyResponse _
Show PutPermissionPolicyResponse
Decode PutPermissionPolicyResponse
Encode PutPermissionPolicyResponse
```

#### `RateBasedRule`

``` purescript
newtype RateBasedRule
  = RateBasedRule { "RuleId" :: ResourceId, "Name" :: Maybe (ResourceName), "MetricName" :: Maybe (MetricName), "MatchPredicates" :: Predicates, "RateKey" :: RateKey, "RateLimit" :: RateLimit }
```

<p>A <code>RateBasedRule</code> is identical to a regular <a>Rule</a>, with one addition: a <code>RateBasedRule</code> counts the number of requests that arrive from a specified IP address every five minutes. For example, based on recent requests that you've seen from an attacker, you might create a <code>RateBasedRule</code> that includes the following conditions: </p> <ul> <li> <p>The requests come from 192.0.2.44.</p> </li> <li> <p>They contain the value <code>BadBot</code> in the <code>User-Agent</code> header.</p> </li> </ul> <p>In the rule, you also define the rate limit as 15,000.</p> <p>Requests that meet both of these conditions and exceed 15,000 requests every five minutes trigger the rule's action (block or count), which is defined in the web ACL.</p>

##### Instances
``` purescript
Newtype RateBasedRule _
Generic RateBasedRule _
Show RateBasedRule
Decode RateBasedRule
Encode RateBasedRule
```

#### `newRateBasedRule`

``` purescript
newRateBasedRule :: Predicates -> RateKey -> RateLimit -> ResourceId -> RateBasedRule
```

Constructs RateBasedRule from required parameters

#### `newRateBasedRule'`

``` purescript
newRateBasedRule' :: Predicates -> RateKey -> RateLimit -> ResourceId -> ({ "RuleId" :: ResourceId, "Name" :: Maybe (ResourceName), "MetricName" :: Maybe (MetricName), "MatchPredicates" :: Predicates, "RateKey" :: RateKey, "RateLimit" :: RateLimit } -> { "RuleId" :: ResourceId, "Name" :: Maybe (ResourceName), "MetricName" :: Maybe (MetricName), "MatchPredicates" :: Predicates, "RateKey" :: RateKey, "RateLimit" :: RateLimit }) -> RateBasedRule
```

Constructs RateBasedRule's fields from required parameters

#### `RateKey`

``` purescript
newtype RateKey
  = RateKey String
```

##### Instances
``` purescript
Newtype RateKey _
Generic RateKey _
Show RateKey
Decode RateKey
Encode RateKey
```

#### `RateLimit`

``` purescript
newtype RateLimit
  = RateLimit Number
```

##### Instances
``` purescript
Newtype RateLimit _
Generic RateLimit _
Show RateLimit
Decode RateLimit
Encode RateLimit
```

#### `RegexMatchSet`

``` purescript
newtype RegexMatchSet
  = RegexMatchSet { "RegexMatchSetId" :: Maybe (ResourceId), "Name" :: Maybe (ResourceName), "RegexMatchTuples" :: Maybe (RegexMatchTuples) }
```

<p>In a <a>GetRegexMatchSet</a> request, <code>RegexMatchSet</code> is a complex type that contains the <code>RegexMatchSetId</code> and <code>Name</code> of a <code>RegexMatchSet</code>, and the values that you specified when you updated the <code>RegexMatchSet</code>.</p> <p> The values are contained in a <code>RegexMatchTuple</code> object, which specify the parts of web requests that you want AWS WAF to inspect and the values that you want AWS WAF to search for. If a <code>RegexMatchSet</code> contains more than one <code>RegexMatchTuple</code> object, a request needs to match the settings in only one <code>ByteMatchTuple</code> to be considered a match.</p>

##### Instances
``` purescript
Newtype RegexMatchSet _
Generic RegexMatchSet _
Show RegexMatchSet
Decode RegexMatchSet
Encode RegexMatchSet
```

#### `newRegexMatchSet`

``` purescript
newRegexMatchSet :: RegexMatchSet
```

Constructs RegexMatchSet from required parameters

#### `newRegexMatchSet'`

``` purescript
newRegexMatchSet' :: ({ "RegexMatchSetId" :: Maybe (ResourceId), "Name" :: Maybe (ResourceName), "RegexMatchTuples" :: Maybe (RegexMatchTuples) } -> { "RegexMatchSetId" :: Maybe (ResourceId), "Name" :: Maybe (ResourceName), "RegexMatchTuples" :: Maybe (RegexMatchTuples) }) -> RegexMatchSet
```

Constructs RegexMatchSet's fields from required parameters

#### `RegexMatchSetSummaries`

``` purescript
newtype RegexMatchSetSummaries
  = RegexMatchSetSummaries (Array RegexMatchSetSummary)
```

##### Instances
``` purescript
Newtype RegexMatchSetSummaries _
Generic RegexMatchSetSummaries _
Show RegexMatchSetSummaries
Decode RegexMatchSetSummaries
Encode RegexMatchSetSummaries
```

#### `RegexMatchSetSummary`

``` purescript
newtype RegexMatchSetSummary
  = RegexMatchSetSummary { "RegexMatchSetId" :: ResourceId, "Name" :: ResourceName }
```

<p>Returned by <a>ListRegexMatchSets</a>. Each <code>RegexMatchSetSummary</code> object includes the <code>Name</code> and <code>RegexMatchSetId</code> for one <a>RegexMatchSet</a>.</p>

##### Instances
``` purescript
Newtype RegexMatchSetSummary _
Generic RegexMatchSetSummary _
Show RegexMatchSetSummary
Decode RegexMatchSetSummary
Encode RegexMatchSetSummary
```

#### `newRegexMatchSetSummary`

``` purescript
newRegexMatchSetSummary :: ResourceName -> ResourceId -> RegexMatchSetSummary
```

Constructs RegexMatchSetSummary from required parameters

#### `newRegexMatchSetSummary'`

``` purescript
newRegexMatchSetSummary' :: ResourceName -> ResourceId -> ({ "RegexMatchSetId" :: ResourceId, "Name" :: ResourceName } -> { "RegexMatchSetId" :: ResourceId, "Name" :: ResourceName }) -> RegexMatchSetSummary
```

Constructs RegexMatchSetSummary's fields from required parameters

#### `RegexMatchSetUpdate`

``` purescript
newtype RegexMatchSetUpdate
  = RegexMatchSetUpdate { "Action" :: ChangeAction, "RegexMatchTuple" :: RegexMatchTuple }
```

<p>In an <a>UpdateRegexMatchSet</a> request, <code>RegexMatchSetUpdate</code> specifies whether to insert or delete a <a>RegexMatchTuple</a> and includes the settings for the <code>RegexMatchTuple</code>.</p>

##### Instances
``` purescript
Newtype RegexMatchSetUpdate _
Generic RegexMatchSetUpdate _
Show RegexMatchSetUpdate
Decode RegexMatchSetUpdate
Encode RegexMatchSetUpdate
```

#### `newRegexMatchSetUpdate`

``` purescript
newRegexMatchSetUpdate :: ChangeAction -> RegexMatchTuple -> RegexMatchSetUpdate
```

Constructs RegexMatchSetUpdate from required parameters

#### `newRegexMatchSetUpdate'`

``` purescript
newRegexMatchSetUpdate' :: ChangeAction -> RegexMatchTuple -> ({ "Action" :: ChangeAction, "RegexMatchTuple" :: RegexMatchTuple } -> { "Action" :: ChangeAction, "RegexMatchTuple" :: RegexMatchTuple }) -> RegexMatchSetUpdate
```

Constructs RegexMatchSetUpdate's fields from required parameters

#### `RegexMatchSetUpdates`

``` purescript
newtype RegexMatchSetUpdates
  = RegexMatchSetUpdates (Array RegexMatchSetUpdate)
```

##### Instances
``` purescript
Newtype RegexMatchSetUpdates _
Generic RegexMatchSetUpdates _
Show RegexMatchSetUpdates
Decode RegexMatchSetUpdates
Encode RegexMatchSetUpdates
```

#### `RegexMatchTuple`

``` purescript
newtype RegexMatchTuple
  = RegexMatchTuple { "FieldToMatch" :: FieldToMatch, "TextTransformation" :: TextTransformation, "RegexPatternSetId" :: ResourceId }
```

<p>The regular expression pattern that you want AWS WAF to search for in web requests, the location in requests that you want AWS WAF to search, and other settings. Each <code>RegexMatchTuple</code> object contains: </p> <ul> <li> <p>The part of a web request that you want AWS WAF to inspect, such as a query string or the value of the <code>User-Agent</code> header. </p> </li> <li> <p>The identifier of the pattern (a regular expression) that you want AWS WAF to look for. For more information, see <a>RegexPatternSet</a>. </p> </li> <li> <p>Whether to perform any conversions on the request, such as converting it to lowercase, before inspecting it for the specified string.</p> </li> </ul>

##### Instances
``` purescript
Newtype RegexMatchTuple _
Generic RegexMatchTuple _
Show RegexMatchTuple
Decode RegexMatchTuple
Encode RegexMatchTuple
```

#### `newRegexMatchTuple`

``` purescript
newRegexMatchTuple :: FieldToMatch -> ResourceId -> TextTransformation -> RegexMatchTuple
```

Constructs RegexMatchTuple from required parameters

#### `newRegexMatchTuple'`

``` purescript
newRegexMatchTuple' :: FieldToMatch -> ResourceId -> TextTransformation -> ({ "FieldToMatch" :: FieldToMatch, "TextTransformation" :: TextTransformation, "RegexPatternSetId" :: ResourceId } -> { "FieldToMatch" :: FieldToMatch, "TextTransformation" :: TextTransformation, "RegexPatternSetId" :: ResourceId }) -> RegexMatchTuple
```

Constructs RegexMatchTuple's fields from required parameters

#### `RegexMatchTuples`

``` purescript
newtype RegexMatchTuples
  = RegexMatchTuples (Array RegexMatchTuple)
```

##### Instances
``` purescript
Newtype RegexMatchTuples _
Generic RegexMatchTuples _
Show RegexMatchTuples
Decode RegexMatchTuples
Encode RegexMatchTuples
```

#### `RegexPatternSet`

``` purescript
newtype RegexPatternSet
  = RegexPatternSet { "RegexPatternSetId" :: ResourceId, "Name" :: Maybe (ResourceName), "RegexPatternStrings" :: RegexPatternStrings }
```

<p>The <code>RegexPatternSet</code> specifies the regular expression (regex) pattern that you want AWS WAF to search for, such as <code>B[a@]dB[o0]t</code>. You can then configure AWS WAF to reject those requests.</p>

##### Instances
``` purescript
Newtype RegexPatternSet _
Generic RegexPatternSet _
Show RegexPatternSet
Decode RegexPatternSet
Encode RegexPatternSet
```

#### `newRegexPatternSet`

``` purescript
newRegexPatternSet :: ResourceId -> RegexPatternStrings -> RegexPatternSet
```

Constructs RegexPatternSet from required parameters

#### `newRegexPatternSet'`

``` purescript
newRegexPatternSet' :: ResourceId -> RegexPatternStrings -> ({ "RegexPatternSetId" :: ResourceId, "Name" :: Maybe (ResourceName), "RegexPatternStrings" :: RegexPatternStrings } -> { "RegexPatternSetId" :: ResourceId, "Name" :: Maybe (ResourceName), "RegexPatternStrings" :: RegexPatternStrings }) -> RegexPatternSet
```

Constructs RegexPatternSet's fields from required parameters

#### `RegexPatternSetSummaries`

``` purescript
newtype RegexPatternSetSummaries
  = RegexPatternSetSummaries (Array RegexPatternSetSummary)
```

##### Instances
``` purescript
Newtype RegexPatternSetSummaries _
Generic RegexPatternSetSummaries _
Show RegexPatternSetSummaries
Decode RegexPatternSetSummaries
Encode RegexPatternSetSummaries
```

#### `RegexPatternSetSummary`

``` purescript
newtype RegexPatternSetSummary
  = RegexPatternSetSummary { "RegexPatternSetId" :: ResourceId, "Name" :: ResourceName }
```

<p>Returned by <a>ListRegexPatternSets</a>. Each <code>RegexPatternSetSummary</code> object includes the <code>Name</code> and <code>RegexPatternSetId</code> for one <a>RegexPatternSet</a>.</p>

##### Instances
``` purescript
Newtype RegexPatternSetSummary _
Generic RegexPatternSetSummary _
Show RegexPatternSetSummary
Decode RegexPatternSetSummary
Encode RegexPatternSetSummary
```

#### `newRegexPatternSetSummary`

``` purescript
newRegexPatternSetSummary :: ResourceName -> ResourceId -> RegexPatternSetSummary
```

Constructs RegexPatternSetSummary from required parameters

#### `newRegexPatternSetSummary'`

``` purescript
newRegexPatternSetSummary' :: ResourceName -> ResourceId -> ({ "RegexPatternSetId" :: ResourceId, "Name" :: ResourceName } -> { "RegexPatternSetId" :: ResourceId, "Name" :: ResourceName }) -> RegexPatternSetSummary
```

Constructs RegexPatternSetSummary's fields from required parameters

#### `RegexPatternSetUpdate`

``` purescript
newtype RegexPatternSetUpdate
  = RegexPatternSetUpdate { "Action" :: ChangeAction, "RegexPatternString" :: RegexPatternString }
```

<p>In an <a>UpdateRegexPatternSet</a> request, <code>RegexPatternSetUpdate</code> specifies whether to insert or delete a <code>RegexPatternString</code> and includes the settings for the <code>RegexPatternString</code>.</p>

##### Instances
``` purescript
Newtype RegexPatternSetUpdate _
Generic RegexPatternSetUpdate _
Show RegexPatternSetUpdate
Decode RegexPatternSetUpdate
Encode RegexPatternSetUpdate
```

#### `newRegexPatternSetUpdate`

``` purescript
newRegexPatternSetUpdate :: ChangeAction -> RegexPatternString -> RegexPatternSetUpdate
```

Constructs RegexPatternSetUpdate from required parameters

#### `newRegexPatternSetUpdate'`

``` purescript
newRegexPatternSetUpdate' :: ChangeAction -> RegexPatternString -> ({ "Action" :: ChangeAction, "RegexPatternString" :: RegexPatternString } -> { "Action" :: ChangeAction, "RegexPatternString" :: RegexPatternString }) -> RegexPatternSetUpdate
```

Constructs RegexPatternSetUpdate's fields from required parameters

#### `RegexPatternSetUpdates`

``` purescript
newtype RegexPatternSetUpdates
  = RegexPatternSetUpdates (Array RegexPatternSetUpdate)
```

##### Instances
``` purescript
Newtype RegexPatternSetUpdates _
Generic RegexPatternSetUpdates _
Show RegexPatternSetUpdates
Decode RegexPatternSetUpdates
Encode RegexPatternSetUpdates
```

#### `RegexPatternString`

``` purescript
newtype RegexPatternString
  = RegexPatternString String
```

##### Instances
``` purescript
Newtype RegexPatternString _
Generic RegexPatternString _
Show RegexPatternString
Decode RegexPatternString
Encode RegexPatternString
```

#### `RegexPatternStrings`

``` purescript
newtype RegexPatternStrings
  = RegexPatternStrings (Array RegexPatternString)
```

##### Instances
``` purescript
Newtype RegexPatternStrings _
Generic RegexPatternStrings _
Show RegexPatternStrings
Decode RegexPatternStrings
Encode RegexPatternStrings
```

#### `ResourceArn`

``` purescript
newtype ResourceArn
  = ResourceArn String
```

##### Instances
``` purescript
Newtype ResourceArn _
Generic ResourceArn _
Show ResourceArn
Decode ResourceArn
Encode ResourceArn
```

#### `ResourceArns`

``` purescript
newtype ResourceArns
  = ResourceArns (Array ResourceArn)
```

##### Instances
``` purescript
Newtype ResourceArns _
Generic ResourceArns _
Show ResourceArns
Decode ResourceArns
Encode ResourceArns
```

#### `ResourceId`

``` purescript
newtype ResourceId
  = ResourceId String
```

##### Instances
``` purescript
Newtype ResourceId _
Generic ResourceId _
Show ResourceId
Decode ResourceId
Encode ResourceId
```

#### `ResourceName`

``` purescript
newtype ResourceName
  = ResourceName String
```

##### Instances
``` purescript
Newtype ResourceName _
Generic ResourceName _
Show ResourceName
Decode ResourceName
Encode ResourceName
```

#### `Rule`

``` purescript
newtype Rule
  = Rule { "RuleId" :: ResourceId, "Name" :: Maybe (ResourceName), "MetricName" :: Maybe (MetricName), "Predicates" :: Predicates }
```

<p>A combination of <a>ByteMatchSet</a>, <a>IPSet</a>, and/or <a>SqlInjectionMatchSet</a> objects that identify the web requests that you want to allow, block, or count. For example, you might create a <code>Rule</code> that includes the following predicates:</p> <ul> <li> <p>An <code>IPSet</code> that causes AWS WAF to search for web requests that originate from the IP address <code>192.0.2.44</code> </p> </li> <li> <p>A <code>ByteMatchSet</code> that causes AWS WAF to search for web requests for which the value of the <code>User-Agent</code> header is <code>BadBot</code>.</p> </li> </ul> <p>To match the settings in this <code>Rule</code>, a request must originate from <code>192.0.2.44</code> AND include a <code>User-Agent</code> header for which the value is <code>BadBot</code>.</p>

##### Instances
``` purescript
Newtype Rule _
Generic Rule _
Show Rule
Decode Rule
Encode Rule
```

#### `newRule`

``` purescript
newRule :: Predicates -> ResourceId -> Rule
```

Constructs Rule from required parameters

#### `newRule'`

``` purescript
newRule' :: Predicates -> ResourceId -> ({ "RuleId" :: ResourceId, "Name" :: Maybe (ResourceName), "MetricName" :: Maybe (MetricName), "Predicates" :: Predicates } -> { "RuleId" :: ResourceId, "Name" :: Maybe (ResourceName), "MetricName" :: Maybe (MetricName), "Predicates" :: Predicates }) -> Rule
```

Constructs Rule's fields from required parameters

#### `RuleGroup`

``` purescript
newtype RuleGroup
  = RuleGroup { "RuleGroupId" :: ResourceId, "Name" :: Maybe (ResourceName), "MetricName" :: Maybe (MetricName) }
```

<p>A collection of predefined rules that you can add to a web ACL.</p> <p>Rule groups are subject to the following limits:</p> <ul> <li> <p>Three rule groups per account. You can request an increase to this limit by contacting customer support.</p> </li> <li> <p>One rule group per web ACL.</p> </li> <li> <p>Ten rules per rule group.</p> </li> </ul>

##### Instances
``` purescript
Newtype RuleGroup _
Generic RuleGroup _
Show RuleGroup
Decode RuleGroup
Encode RuleGroup
```

#### `newRuleGroup`

``` purescript
newRuleGroup :: ResourceId -> RuleGroup
```

Constructs RuleGroup from required parameters

#### `newRuleGroup'`

``` purescript
newRuleGroup' :: ResourceId -> ({ "RuleGroupId" :: ResourceId, "Name" :: Maybe (ResourceName), "MetricName" :: Maybe (MetricName) } -> { "RuleGroupId" :: ResourceId, "Name" :: Maybe (ResourceName), "MetricName" :: Maybe (MetricName) }) -> RuleGroup
```

Constructs RuleGroup's fields from required parameters

#### `RuleGroupSummaries`

``` purescript
newtype RuleGroupSummaries
  = RuleGroupSummaries (Array RuleGroupSummary)
```

##### Instances
``` purescript
Newtype RuleGroupSummaries _
Generic RuleGroupSummaries _
Show RuleGroupSummaries
Decode RuleGroupSummaries
Encode RuleGroupSummaries
```

#### `RuleGroupSummary`

``` purescript
newtype RuleGroupSummary
  = RuleGroupSummary { "RuleGroupId" :: ResourceId, "Name" :: ResourceName }
```

<p>Contains the identifier and the friendly name or description of the <code>RuleGroup</code>.</p>

##### Instances
``` purescript
Newtype RuleGroupSummary _
Generic RuleGroupSummary _
Show RuleGroupSummary
Decode RuleGroupSummary
Encode RuleGroupSummary
```

#### `newRuleGroupSummary`

``` purescript
newRuleGroupSummary :: ResourceName -> ResourceId -> RuleGroupSummary
```

Constructs RuleGroupSummary from required parameters

#### `newRuleGroupSummary'`

``` purescript
newRuleGroupSummary' :: ResourceName -> ResourceId -> ({ "RuleGroupId" :: ResourceId, "Name" :: ResourceName } -> { "RuleGroupId" :: ResourceId, "Name" :: ResourceName }) -> RuleGroupSummary
```

Constructs RuleGroupSummary's fields from required parameters

#### `RuleGroupUpdate`

``` purescript
newtype RuleGroupUpdate
  = RuleGroupUpdate { "Action" :: ChangeAction, "ActivatedRule" :: ActivatedRule }
```

<p>Specifies an <code>ActivatedRule</code> and indicates whether you want to add it to a <code>RuleGroup</code> or delete it from a <code>RuleGroup</code>.</p>

##### Instances
``` purescript
Newtype RuleGroupUpdate _
Generic RuleGroupUpdate _
Show RuleGroupUpdate
Decode RuleGroupUpdate
Encode RuleGroupUpdate
```

#### `newRuleGroupUpdate`

``` purescript
newRuleGroupUpdate :: ChangeAction -> ActivatedRule -> RuleGroupUpdate
```

Constructs RuleGroupUpdate from required parameters

#### `newRuleGroupUpdate'`

``` purescript
newRuleGroupUpdate' :: ChangeAction -> ActivatedRule -> ({ "Action" :: ChangeAction, "ActivatedRule" :: ActivatedRule } -> { "Action" :: ChangeAction, "ActivatedRule" :: ActivatedRule }) -> RuleGroupUpdate
```

Constructs RuleGroupUpdate's fields from required parameters

#### `RuleGroupUpdates`

``` purescript
newtype RuleGroupUpdates
  = RuleGroupUpdates (Array RuleGroupUpdate)
```

##### Instances
``` purescript
Newtype RuleGroupUpdates _
Generic RuleGroupUpdates _
Show RuleGroupUpdates
Decode RuleGroupUpdates
Encode RuleGroupUpdates
```

#### `RulePriority`

``` purescript
newtype RulePriority
  = RulePriority Int
```

##### Instances
``` purescript
Newtype RulePriority _
Generic RulePriority _
Show RulePriority
Decode RulePriority
Encode RulePriority
```

#### `RuleSummaries`

``` purescript
newtype RuleSummaries
  = RuleSummaries (Array RuleSummary)
```

##### Instances
``` purescript
Newtype RuleSummaries _
Generic RuleSummaries _
Show RuleSummaries
Decode RuleSummaries
Encode RuleSummaries
```

#### `RuleSummary`

``` purescript
newtype RuleSummary
  = RuleSummary { "RuleId" :: ResourceId, "Name" :: ResourceName }
```

<p>Contains the identifier and the friendly name or description of the <code>Rule</code>.</p>

##### Instances
``` purescript
Newtype RuleSummary _
Generic RuleSummary _
Show RuleSummary
Decode RuleSummary
Encode RuleSummary
```

#### `newRuleSummary`

``` purescript
newRuleSummary :: ResourceName -> ResourceId -> RuleSummary
```

Constructs RuleSummary from required parameters

#### `newRuleSummary'`

``` purescript
newRuleSummary' :: ResourceName -> ResourceId -> ({ "RuleId" :: ResourceId, "Name" :: ResourceName } -> { "RuleId" :: ResourceId, "Name" :: ResourceName }) -> RuleSummary
```

Constructs RuleSummary's fields from required parameters

#### `RuleUpdate`

``` purescript
newtype RuleUpdate
  = RuleUpdate { "Action" :: ChangeAction, "Predicate" :: Predicate }
```

<p>Specifies a <code>Predicate</code> (such as an <code>IPSet</code>) and indicates whether you want to add it to a <code>Rule</code> or delete it from a <code>Rule</code>.</p>

##### Instances
``` purescript
Newtype RuleUpdate _
Generic RuleUpdate _
Show RuleUpdate
Decode RuleUpdate
Encode RuleUpdate
```

#### `newRuleUpdate`

``` purescript
newRuleUpdate :: ChangeAction -> Predicate -> RuleUpdate
```

Constructs RuleUpdate from required parameters

#### `newRuleUpdate'`

``` purescript
newRuleUpdate' :: ChangeAction -> Predicate -> ({ "Action" :: ChangeAction, "Predicate" :: Predicate } -> { "Action" :: ChangeAction, "Predicate" :: Predicate }) -> RuleUpdate
```

Constructs RuleUpdate's fields from required parameters

#### `RuleUpdates`

``` purescript
newtype RuleUpdates
  = RuleUpdates (Array RuleUpdate)
```

##### Instances
``` purescript
Newtype RuleUpdates _
Generic RuleUpdates _
Show RuleUpdates
Decode RuleUpdates
Encode RuleUpdates
```

#### `SampleWeight`

``` purescript
newtype SampleWeight
  = SampleWeight Number
```

##### Instances
``` purescript
Newtype SampleWeight _
Generic SampleWeight _
Show SampleWeight
Decode SampleWeight
Encode SampleWeight
```

#### `SampledHTTPRequest`

``` purescript
newtype SampledHTTPRequest
  = SampledHTTPRequest { "Request" :: HTTPRequest, "Weight" :: SampleWeight, "Timestamp" :: Maybe (Timestamp), "Action" :: Maybe (Action), "RuleWithinRuleGroup" :: Maybe (ResourceId) }
```

<p>The response from a <a>GetSampledRequests</a> request includes a <code>SampledHTTPRequests</code> complex type that appears as <code>SampledRequests</code> in the response syntax. <code>SampledHTTPRequests</code> contains one <code>SampledHTTPRequest</code> object for each web request that is returned by <code>GetSampledRequests</code>.</p>

##### Instances
``` purescript
Newtype SampledHTTPRequest _
Generic SampledHTTPRequest _
Show SampledHTTPRequest
Decode SampledHTTPRequest
Encode SampledHTTPRequest
```

#### `newSampledHTTPRequest`

``` purescript
newSampledHTTPRequest :: HTTPRequest -> SampleWeight -> SampledHTTPRequest
```

Constructs SampledHTTPRequest from required parameters

#### `newSampledHTTPRequest'`

``` purescript
newSampledHTTPRequest' :: HTTPRequest -> SampleWeight -> ({ "Request" :: HTTPRequest, "Weight" :: SampleWeight, "Timestamp" :: Maybe (Timestamp), "Action" :: Maybe (Action), "RuleWithinRuleGroup" :: Maybe (ResourceId) } -> { "Request" :: HTTPRequest, "Weight" :: SampleWeight, "Timestamp" :: Maybe (Timestamp), "Action" :: Maybe (Action), "RuleWithinRuleGroup" :: Maybe (ResourceId) }) -> SampledHTTPRequest
```

Constructs SampledHTTPRequest's fields from required parameters

#### `SampledHTTPRequests`

``` purescript
newtype SampledHTTPRequests
  = SampledHTTPRequests (Array SampledHTTPRequest)
```

##### Instances
``` purescript
Newtype SampledHTTPRequests _
Generic SampledHTTPRequests _
Show SampledHTTPRequests
Decode SampledHTTPRequests
Encode SampledHTTPRequests
```

#### `Size`

``` purescript
newtype Size
  = Size Number
```

##### Instances
``` purescript
Newtype Size _
Generic Size _
Show Size
Decode Size
Encode Size
```

#### `SizeConstraint`

``` purescript
newtype SizeConstraint
  = SizeConstraint { "FieldToMatch" :: FieldToMatch, "TextTransformation" :: TextTransformation, "ComparisonOperator" :: ComparisonOperator, "Size" :: Size }
```

<p>Specifies a constraint on the size of a part of the web request. AWS WAF uses the <code>Size</code>, <code>ComparisonOperator</code>, and <code>FieldToMatch</code> to build an expression in the form of "<code>Size</code> <code>ComparisonOperator</code> size in bytes of <code>FieldToMatch</code>". If that expression is true, the <code>SizeConstraint</code> is considered to match.</p>

##### Instances
``` purescript
Newtype SizeConstraint _
Generic SizeConstraint _
Show SizeConstraint
Decode SizeConstraint
Encode SizeConstraint
```

#### `newSizeConstraint`

``` purescript
newSizeConstraint :: ComparisonOperator -> FieldToMatch -> Size -> TextTransformation -> SizeConstraint
```

Constructs SizeConstraint from required parameters

#### `newSizeConstraint'`

``` purescript
newSizeConstraint' :: ComparisonOperator -> FieldToMatch -> Size -> TextTransformation -> ({ "FieldToMatch" :: FieldToMatch, "TextTransformation" :: TextTransformation, "ComparisonOperator" :: ComparisonOperator, "Size" :: Size } -> { "FieldToMatch" :: FieldToMatch, "TextTransformation" :: TextTransformation, "ComparisonOperator" :: ComparisonOperator, "Size" :: Size }) -> SizeConstraint
```

Constructs SizeConstraint's fields from required parameters

#### `SizeConstraintSet`

``` purescript
newtype SizeConstraintSet
  = SizeConstraintSet { "SizeConstraintSetId" :: ResourceId, "Name" :: Maybe (ResourceName), "SizeConstraints" :: SizeConstraints }
```

<p>A complex type that contains <code>SizeConstraint</code> objects, which specify the parts of web requests that you want AWS WAF to inspect the size of. If a <code>SizeConstraintSet</code> contains more than one <code>SizeConstraint</code> object, a request only needs to match one constraint to be considered a match.</p>

##### Instances
``` purescript
Newtype SizeConstraintSet _
Generic SizeConstraintSet _
Show SizeConstraintSet
Decode SizeConstraintSet
Encode SizeConstraintSet
```

#### `newSizeConstraintSet`

``` purescript
newSizeConstraintSet :: ResourceId -> SizeConstraints -> SizeConstraintSet
```

Constructs SizeConstraintSet from required parameters

#### `newSizeConstraintSet'`

``` purescript
newSizeConstraintSet' :: ResourceId -> SizeConstraints -> ({ "SizeConstraintSetId" :: ResourceId, "Name" :: Maybe (ResourceName), "SizeConstraints" :: SizeConstraints } -> { "SizeConstraintSetId" :: ResourceId, "Name" :: Maybe (ResourceName), "SizeConstraints" :: SizeConstraints }) -> SizeConstraintSet
```

Constructs SizeConstraintSet's fields from required parameters

#### `SizeConstraintSetSummaries`

``` purescript
newtype SizeConstraintSetSummaries
  = SizeConstraintSetSummaries (Array SizeConstraintSetSummary)
```

##### Instances
``` purescript
Newtype SizeConstraintSetSummaries _
Generic SizeConstraintSetSummaries _
Show SizeConstraintSetSummaries
Decode SizeConstraintSetSummaries
Encode SizeConstraintSetSummaries
```

#### `SizeConstraintSetSummary`

``` purescript
newtype SizeConstraintSetSummary
  = SizeConstraintSetSummary { "SizeConstraintSetId" :: ResourceId, "Name" :: ResourceName }
```

<p>The <code>Id</code> and <code>Name</code> of a <code>SizeConstraintSet</code>.</p>

##### Instances
``` purescript
Newtype SizeConstraintSetSummary _
Generic SizeConstraintSetSummary _
Show SizeConstraintSetSummary
Decode SizeConstraintSetSummary
Encode SizeConstraintSetSummary
```

#### `newSizeConstraintSetSummary`

``` purescript
newSizeConstraintSetSummary :: ResourceName -> ResourceId -> SizeConstraintSetSummary
```

Constructs SizeConstraintSetSummary from required parameters

#### `newSizeConstraintSetSummary'`

``` purescript
newSizeConstraintSetSummary' :: ResourceName -> ResourceId -> ({ "SizeConstraintSetId" :: ResourceId, "Name" :: ResourceName } -> { "SizeConstraintSetId" :: ResourceId, "Name" :: ResourceName }) -> SizeConstraintSetSummary
```

Constructs SizeConstraintSetSummary's fields from required parameters

#### `SizeConstraintSetUpdate`

``` purescript
newtype SizeConstraintSetUpdate
  = SizeConstraintSetUpdate { "Action" :: ChangeAction, "SizeConstraint" :: SizeConstraint }
```

<p>Specifies the part of a web request that you want to inspect the size of and indicates whether you want to add the specification to a <a>SizeConstraintSet</a> or delete it from a <code>SizeConstraintSet</code>.</p>

##### Instances
``` purescript
Newtype SizeConstraintSetUpdate _
Generic SizeConstraintSetUpdate _
Show SizeConstraintSetUpdate
Decode SizeConstraintSetUpdate
Encode SizeConstraintSetUpdate
```

#### `newSizeConstraintSetUpdate`

``` purescript
newSizeConstraintSetUpdate :: ChangeAction -> SizeConstraint -> SizeConstraintSetUpdate
```

Constructs SizeConstraintSetUpdate from required parameters

#### `newSizeConstraintSetUpdate'`

``` purescript
newSizeConstraintSetUpdate' :: ChangeAction -> SizeConstraint -> ({ "Action" :: ChangeAction, "SizeConstraint" :: SizeConstraint } -> { "Action" :: ChangeAction, "SizeConstraint" :: SizeConstraint }) -> SizeConstraintSetUpdate
```

Constructs SizeConstraintSetUpdate's fields from required parameters

#### `SizeConstraintSetUpdates`

``` purescript
newtype SizeConstraintSetUpdates
  = SizeConstraintSetUpdates (Array SizeConstraintSetUpdate)
```

##### Instances
``` purescript
Newtype SizeConstraintSetUpdates _
Generic SizeConstraintSetUpdates _
Show SizeConstraintSetUpdates
Decode SizeConstraintSetUpdates
Encode SizeConstraintSetUpdates
```

#### `SizeConstraints`

``` purescript
newtype SizeConstraints
  = SizeConstraints (Array SizeConstraint)
```

##### Instances
``` purescript
Newtype SizeConstraints _
Generic SizeConstraints _
Show SizeConstraints
Decode SizeConstraints
Encode SizeConstraints
```

#### `SqlInjectionMatchSet`

``` purescript
newtype SqlInjectionMatchSet
  = SqlInjectionMatchSet { "SqlInjectionMatchSetId" :: ResourceId, "Name" :: Maybe (ResourceName), "SqlInjectionMatchTuples" :: SqlInjectionMatchTuples }
```

<p>A complex type that contains <code>SqlInjectionMatchTuple</code> objects, which specify the parts of web requests that you want AWS WAF to inspect for snippets of malicious SQL code and, if you want AWS WAF to inspect a header, the name of the header. If a <code>SqlInjectionMatchSet</code> contains more than one <code>SqlInjectionMatchTuple</code> object, a request needs to include snippets of SQL code in only one of the specified parts of the request to be considered a match.</p>

##### Instances
``` purescript
Newtype SqlInjectionMatchSet _
Generic SqlInjectionMatchSet _
Show SqlInjectionMatchSet
Decode SqlInjectionMatchSet
Encode SqlInjectionMatchSet
```

#### `newSqlInjectionMatchSet`

``` purescript
newSqlInjectionMatchSet :: ResourceId -> SqlInjectionMatchTuples -> SqlInjectionMatchSet
```

Constructs SqlInjectionMatchSet from required parameters

#### `newSqlInjectionMatchSet'`

``` purescript
newSqlInjectionMatchSet' :: ResourceId -> SqlInjectionMatchTuples -> ({ "SqlInjectionMatchSetId" :: ResourceId, "Name" :: Maybe (ResourceName), "SqlInjectionMatchTuples" :: SqlInjectionMatchTuples } -> { "SqlInjectionMatchSetId" :: ResourceId, "Name" :: Maybe (ResourceName), "SqlInjectionMatchTuples" :: SqlInjectionMatchTuples }) -> SqlInjectionMatchSet
```

Constructs SqlInjectionMatchSet's fields from required parameters

#### `SqlInjectionMatchSetSummaries`

``` purescript
newtype SqlInjectionMatchSetSummaries
  = SqlInjectionMatchSetSummaries (Array SqlInjectionMatchSetSummary)
```

##### Instances
``` purescript
Newtype SqlInjectionMatchSetSummaries _
Generic SqlInjectionMatchSetSummaries _
Show SqlInjectionMatchSetSummaries
Decode SqlInjectionMatchSetSummaries
Encode SqlInjectionMatchSetSummaries
```

#### `SqlInjectionMatchSetSummary`

``` purescript
newtype SqlInjectionMatchSetSummary
  = SqlInjectionMatchSetSummary { "SqlInjectionMatchSetId" :: ResourceId, "Name" :: ResourceName }
```

<p>The <code>Id</code> and <code>Name</code> of a <code>SqlInjectionMatchSet</code>.</p>

##### Instances
``` purescript
Newtype SqlInjectionMatchSetSummary _
Generic SqlInjectionMatchSetSummary _
Show SqlInjectionMatchSetSummary
Decode SqlInjectionMatchSetSummary
Encode SqlInjectionMatchSetSummary
```

#### `newSqlInjectionMatchSetSummary`

``` purescript
newSqlInjectionMatchSetSummary :: ResourceName -> ResourceId -> SqlInjectionMatchSetSummary
```

Constructs SqlInjectionMatchSetSummary from required parameters

#### `newSqlInjectionMatchSetSummary'`

``` purescript
newSqlInjectionMatchSetSummary' :: ResourceName -> ResourceId -> ({ "SqlInjectionMatchSetId" :: ResourceId, "Name" :: ResourceName } -> { "SqlInjectionMatchSetId" :: ResourceId, "Name" :: ResourceName }) -> SqlInjectionMatchSetSummary
```

Constructs SqlInjectionMatchSetSummary's fields from required parameters

#### `SqlInjectionMatchSetUpdate`

``` purescript
newtype SqlInjectionMatchSetUpdate
  = SqlInjectionMatchSetUpdate { "Action" :: ChangeAction, "SqlInjectionMatchTuple" :: SqlInjectionMatchTuple }
```

<p>Specifies the part of a web request that you want to inspect for snippets of malicious SQL code and indicates whether you want to add the specification to a <a>SqlInjectionMatchSet</a> or delete it from a <code>SqlInjectionMatchSet</code>.</p>

##### Instances
``` purescript
Newtype SqlInjectionMatchSetUpdate _
Generic SqlInjectionMatchSetUpdate _
Show SqlInjectionMatchSetUpdate
Decode SqlInjectionMatchSetUpdate
Encode SqlInjectionMatchSetUpdate
```

#### `newSqlInjectionMatchSetUpdate`

``` purescript
newSqlInjectionMatchSetUpdate :: ChangeAction -> SqlInjectionMatchTuple -> SqlInjectionMatchSetUpdate
```

Constructs SqlInjectionMatchSetUpdate from required parameters

#### `newSqlInjectionMatchSetUpdate'`

``` purescript
newSqlInjectionMatchSetUpdate' :: ChangeAction -> SqlInjectionMatchTuple -> ({ "Action" :: ChangeAction, "SqlInjectionMatchTuple" :: SqlInjectionMatchTuple } -> { "Action" :: ChangeAction, "SqlInjectionMatchTuple" :: SqlInjectionMatchTuple }) -> SqlInjectionMatchSetUpdate
```

Constructs SqlInjectionMatchSetUpdate's fields from required parameters

#### `SqlInjectionMatchSetUpdates`

``` purescript
newtype SqlInjectionMatchSetUpdates
  = SqlInjectionMatchSetUpdates (Array SqlInjectionMatchSetUpdate)
```

##### Instances
``` purescript
Newtype SqlInjectionMatchSetUpdates _
Generic SqlInjectionMatchSetUpdates _
Show SqlInjectionMatchSetUpdates
Decode SqlInjectionMatchSetUpdates
Encode SqlInjectionMatchSetUpdates
```

#### `SqlInjectionMatchTuple`

``` purescript
newtype SqlInjectionMatchTuple
  = SqlInjectionMatchTuple { "FieldToMatch" :: FieldToMatch, "TextTransformation" :: TextTransformation }
```

<p>Specifies the part of a web request that you want AWS WAF to inspect for snippets of malicious SQL code and, if you want AWS WAF to inspect a header, the name of the header.</p>

##### Instances
``` purescript
Newtype SqlInjectionMatchTuple _
Generic SqlInjectionMatchTuple _
Show SqlInjectionMatchTuple
Decode SqlInjectionMatchTuple
Encode SqlInjectionMatchTuple
```

#### `newSqlInjectionMatchTuple`

``` purescript
newSqlInjectionMatchTuple :: FieldToMatch -> TextTransformation -> SqlInjectionMatchTuple
```

Constructs SqlInjectionMatchTuple from required parameters

#### `newSqlInjectionMatchTuple'`

``` purescript
newSqlInjectionMatchTuple' :: FieldToMatch -> TextTransformation -> ({ "FieldToMatch" :: FieldToMatch, "TextTransformation" :: TextTransformation } -> { "FieldToMatch" :: FieldToMatch, "TextTransformation" :: TextTransformation }) -> SqlInjectionMatchTuple
```

Constructs SqlInjectionMatchTuple's fields from required parameters

#### `SqlInjectionMatchTuples`

``` purescript
newtype SqlInjectionMatchTuples
  = SqlInjectionMatchTuples (Array SqlInjectionMatchTuple)
```

##### Instances
``` purescript
Newtype SqlInjectionMatchTuples _
Generic SqlInjectionMatchTuples _
Show SqlInjectionMatchTuples
Decode SqlInjectionMatchTuples
Encode SqlInjectionMatchTuples
```

#### `SubscribedRuleGroupSummaries`

``` purescript
newtype SubscribedRuleGroupSummaries
  = SubscribedRuleGroupSummaries (Array SubscribedRuleGroupSummary)
```

##### Instances
``` purescript
Newtype SubscribedRuleGroupSummaries _
Generic SubscribedRuleGroupSummaries _
Show SubscribedRuleGroupSummaries
Decode SubscribedRuleGroupSummaries
Encode SubscribedRuleGroupSummaries
```

#### `SubscribedRuleGroupSummary`

``` purescript
newtype SubscribedRuleGroupSummary
  = SubscribedRuleGroupSummary { "RuleGroupId" :: ResourceId, "Name" :: ResourceName, "MetricName" :: MetricName }
```

<p>A summary of the rule groups you are subscribed to.</p>

##### Instances
``` purescript
Newtype SubscribedRuleGroupSummary _
Generic SubscribedRuleGroupSummary _
Show SubscribedRuleGroupSummary
Decode SubscribedRuleGroupSummary
Encode SubscribedRuleGroupSummary
```

#### `newSubscribedRuleGroupSummary`

``` purescript
newSubscribedRuleGroupSummary :: MetricName -> ResourceName -> ResourceId -> SubscribedRuleGroupSummary
```

Constructs SubscribedRuleGroupSummary from required parameters

#### `newSubscribedRuleGroupSummary'`

``` purescript
newSubscribedRuleGroupSummary' :: MetricName -> ResourceName -> ResourceId -> ({ "RuleGroupId" :: ResourceId, "Name" :: ResourceName, "MetricName" :: MetricName } -> { "RuleGroupId" :: ResourceId, "Name" :: ResourceName, "MetricName" :: MetricName }) -> SubscribedRuleGroupSummary
```

Constructs SubscribedRuleGroupSummary's fields from required parameters

#### `TextTransformation`

``` purescript
newtype TextTransformation
  = TextTransformation String
```

##### Instances
``` purescript
Newtype TextTransformation _
Generic TextTransformation _
Show TextTransformation
Decode TextTransformation
Encode TextTransformation
```

#### `TimeWindow`

``` purescript
newtype TimeWindow
  = TimeWindow { "StartTime" :: Timestamp, "EndTime" :: Timestamp }
```

<p>In a <a>GetSampledRequests</a> request, the <code>StartTime</code> and <code>EndTime</code> objects specify the time range for which you want AWS WAF to return a sample of web requests.</p> <p>In a <a>GetSampledRequests</a> response, the <code>StartTime</code> and <code>EndTime</code> objects specify the time range for which AWS WAF actually returned a sample of web requests. AWS WAF gets the specified number of requests from among the first 5,000 requests that your AWS resource receives during the specified time period. If your resource receives more than 5,000 requests during that period, AWS WAF stops sampling after the 5,000th request. In that case, <code>EndTime</code> is the time that AWS WAF received the 5,000th request. </p>

##### Instances
``` purescript
Newtype TimeWindow _
Generic TimeWindow _
Show TimeWindow
Decode TimeWindow
Encode TimeWindow
```

#### `newTimeWindow`

``` purescript
newTimeWindow :: Timestamp -> Timestamp -> TimeWindow
```

Constructs TimeWindow from required parameters

#### `newTimeWindow'`

``` purescript
newTimeWindow' :: Timestamp -> Timestamp -> ({ "StartTime" :: Timestamp, "EndTime" :: Timestamp } -> { "StartTime" :: Timestamp, "EndTime" :: Timestamp }) -> TimeWindow
```

Constructs TimeWindow's fields from required parameters

#### `URIString`

``` purescript
newtype URIString
  = URIString String
```

##### Instances
``` purescript
Newtype URIString _
Generic URIString _
Show URIString
Decode URIString
Encode URIString
```

#### `UpdateByteMatchSetRequest`

``` purescript
newtype UpdateByteMatchSetRequest
  = UpdateByteMatchSetRequest { "ByteMatchSetId" :: ResourceId, "ChangeToken" :: ChangeToken, "Updates" :: ByteMatchSetUpdates }
```

##### Instances
``` purescript
Newtype UpdateByteMatchSetRequest _
Generic UpdateByteMatchSetRequest _
Show UpdateByteMatchSetRequest
Decode UpdateByteMatchSetRequest
Encode UpdateByteMatchSetRequest
```

#### `newUpdateByteMatchSetRequest`

``` purescript
newUpdateByteMatchSetRequest :: ResourceId -> ChangeToken -> ByteMatchSetUpdates -> UpdateByteMatchSetRequest
```

Constructs UpdateByteMatchSetRequest from required parameters

#### `newUpdateByteMatchSetRequest'`

``` purescript
newUpdateByteMatchSetRequest' :: ResourceId -> ChangeToken -> ByteMatchSetUpdates -> ({ "ByteMatchSetId" :: ResourceId, "ChangeToken" :: ChangeToken, "Updates" :: ByteMatchSetUpdates } -> { "ByteMatchSetId" :: ResourceId, "ChangeToken" :: ChangeToken, "Updates" :: ByteMatchSetUpdates }) -> UpdateByteMatchSetRequest
```

Constructs UpdateByteMatchSetRequest's fields from required parameters

#### `UpdateByteMatchSetResponse`

``` purescript
newtype UpdateByteMatchSetResponse
  = UpdateByteMatchSetResponse { "ChangeToken" :: Maybe (ChangeToken) }
```

##### Instances
``` purescript
Newtype UpdateByteMatchSetResponse _
Generic UpdateByteMatchSetResponse _
Show UpdateByteMatchSetResponse
Decode UpdateByteMatchSetResponse
Encode UpdateByteMatchSetResponse
```

#### `newUpdateByteMatchSetResponse`

``` purescript
newUpdateByteMatchSetResponse :: UpdateByteMatchSetResponse
```

Constructs UpdateByteMatchSetResponse from required parameters

#### `newUpdateByteMatchSetResponse'`

``` purescript
newUpdateByteMatchSetResponse' :: ({ "ChangeToken" :: Maybe (ChangeToken) } -> { "ChangeToken" :: Maybe (ChangeToken) }) -> UpdateByteMatchSetResponse
```

Constructs UpdateByteMatchSetResponse's fields from required parameters

#### `UpdateGeoMatchSetRequest`

``` purescript
newtype UpdateGeoMatchSetRequest
  = UpdateGeoMatchSetRequest { "GeoMatchSetId" :: ResourceId, "ChangeToken" :: ChangeToken, "Updates" :: GeoMatchSetUpdates }
```

##### Instances
``` purescript
Newtype UpdateGeoMatchSetRequest _
Generic UpdateGeoMatchSetRequest _
Show UpdateGeoMatchSetRequest
Decode UpdateGeoMatchSetRequest
Encode UpdateGeoMatchSetRequest
```

#### `newUpdateGeoMatchSetRequest`

``` purescript
newUpdateGeoMatchSetRequest :: ChangeToken -> ResourceId -> GeoMatchSetUpdates -> UpdateGeoMatchSetRequest
```

Constructs UpdateGeoMatchSetRequest from required parameters

#### `newUpdateGeoMatchSetRequest'`

``` purescript
newUpdateGeoMatchSetRequest' :: ChangeToken -> ResourceId -> GeoMatchSetUpdates -> ({ "GeoMatchSetId" :: ResourceId, "ChangeToken" :: ChangeToken, "Updates" :: GeoMatchSetUpdates } -> { "GeoMatchSetId" :: ResourceId, "ChangeToken" :: ChangeToken, "Updates" :: GeoMatchSetUpdates }) -> UpdateGeoMatchSetRequest
```

Constructs UpdateGeoMatchSetRequest's fields from required parameters

#### `UpdateGeoMatchSetResponse`

``` purescript
newtype UpdateGeoMatchSetResponse
  = UpdateGeoMatchSetResponse { "ChangeToken" :: Maybe (ChangeToken) }
```

##### Instances
``` purescript
Newtype UpdateGeoMatchSetResponse _
Generic UpdateGeoMatchSetResponse _
Show UpdateGeoMatchSetResponse
Decode UpdateGeoMatchSetResponse
Encode UpdateGeoMatchSetResponse
```

#### `newUpdateGeoMatchSetResponse`

``` purescript
newUpdateGeoMatchSetResponse :: UpdateGeoMatchSetResponse
```

Constructs UpdateGeoMatchSetResponse from required parameters

#### `newUpdateGeoMatchSetResponse'`

``` purescript
newUpdateGeoMatchSetResponse' :: ({ "ChangeToken" :: Maybe (ChangeToken) } -> { "ChangeToken" :: Maybe (ChangeToken) }) -> UpdateGeoMatchSetResponse
```

Constructs UpdateGeoMatchSetResponse's fields from required parameters

#### `UpdateIPSetRequest`

``` purescript
newtype UpdateIPSetRequest
  = UpdateIPSetRequest { "IPSetId" :: ResourceId, "ChangeToken" :: ChangeToken, "Updates" :: IPSetUpdates }
```

##### Instances
``` purescript
Newtype UpdateIPSetRequest _
Generic UpdateIPSetRequest _
Show UpdateIPSetRequest
Decode UpdateIPSetRequest
Encode UpdateIPSetRequest
```

#### `newUpdateIPSetRequest`

``` purescript
newUpdateIPSetRequest :: ChangeToken -> ResourceId -> IPSetUpdates -> UpdateIPSetRequest
```

Constructs UpdateIPSetRequest from required parameters

#### `newUpdateIPSetRequest'`

``` purescript
newUpdateIPSetRequest' :: ChangeToken -> ResourceId -> IPSetUpdates -> ({ "IPSetId" :: ResourceId, "ChangeToken" :: ChangeToken, "Updates" :: IPSetUpdates } -> { "IPSetId" :: ResourceId, "ChangeToken" :: ChangeToken, "Updates" :: IPSetUpdates }) -> UpdateIPSetRequest
```

Constructs UpdateIPSetRequest's fields from required parameters

#### `UpdateIPSetResponse`

``` purescript
newtype UpdateIPSetResponse
  = UpdateIPSetResponse { "ChangeToken" :: Maybe (ChangeToken) }
```

##### Instances
``` purescript
Newtype UpdateIPSetResponse _
Generic UpdateIPSetResponse _
Show UpdateIPSetResponse
Decode UpdateIPSetResponse
Encode UpdateIPSetResponse
```

#### `newUpdateIPSetResponse`

``` purescript
newUpdateIPSetResponse :: UpdateIPSetResponse
```

Constructs UpdateIPSetResponse from required parameters

#### `newUpdateIPSetResponse'`

``` purescript
newUpdateIPSetResponse' :: ({ "ChangeToken" :: Maybe (ChangeToken) } -> { "ChangeToken" :: Maybe (ChangeToken) }) -> UpdateIPSetResponse
```

Constructs UpdateIPSetResponse's fields from required parameters

#### `UpdateRateBasedRuleRequest`

``` purescript
newtype UpdateRateBasedRuleRequest
  = UpdateRateBasedRuleRequest { "RuleId" :: ResourceId, "ChangeToken" :: ChangeToken, "Updates" :: RuleUpdates, "RateLimit" :: RateLimit }
```

##### Instances
``` purescript
Newtype UpdateRateBasedRuleRequest _
Generic UpdateRateBasedRuleRequest _
Show UpdateRateBasedRuleRequest
Decode UpdateRateBasedRuleRequest
Encode UpdateRateBasedRuleRequest
```

#### `newUpdateRateBasedRuleRequest`

``` purescript
newUpdateRateBasedRuleRequest :: ChangeToken -> RateLimit -> ResourceId -> RuleUpdates -> UpdateRateBasedRuleRequest
```

Constructs UpdateRateBasedRuleRequest from required parameters

#### `newUpdateRateBasedRuleRequest'`

``` purescript
newUpdateRateBasedRuleRequest' :: ChangeToken -> RateLimit -> ResourceId -> RuleUpdates -> ({ "RuleId" :: ResourceId, "ChangeToken" :: ChangeToken, "Updates" :: RuleUpdates, "RateLimit" :: RateLimit } -> { "RuleId" :: ResourceId, "ChangeToken" :: ChangeToken, "Updates" :: RuleUpdates, "RateLimit" :: RateLimit }) -> UpdateRateBasedRuleRequest
```

Constructs UpdateRateBasedRuleRequest's fields from required parameters

#### `UpdateRateBasedRuleResponse`

``` purescript
newtype UpdateRateBasedRuleResponse
  = UpdateRateBasedRuleResponse { "ChangeToken" :: Maybe (ChangeToken) }
```

##### Instances
``` purescript
Newtype UpdateRateBasedRuleResponse _
Generic UpdateRateBasedRuleResponse _
Show UpdateRateBasedRuleResponse
Decode UpdateRateBasedRuleResponse
Encode UpdateRateBasedRuleResponse
```

#### `newUpdateRateBasedRuleResponse`

``` purescript
newUpdateRateBasedRuleResponse :: UpdateRateBasedRuleResponse
```

Constructs UpdateRateBasedRuleResponse from required parameters

#### `newUpdateRateBasedRuleResponse'`

``` purescript
newUpdateRateBasedRuleResponse' :: ({ "ChangeToken" :: Maybe (ChangeToken) } -> { "ChangeToken" :: Maybe (ChangeToken) }) -> UpdateRateBasedRuleResponse
```

Constructs UpdateRateBasedRuleResponse's fields from required parameters

#### `UpdateRegexMatchSetRequest`

``` purescript
newtype UpdateRegexMatchSetRequest
  = UpdateRegexMatchSetRequest { "RegexMatchSetId" :: ResourceId, "Updates" :: RegexMatchSetUpdates, "ChangeToken" :: ChangeToken }
```

##### Instances
``` purescript
Newtype UpdateRegexMatchSetRequest _
Generic UpdateRegexMatchSetRequest _
Show UpdateRegexMatchSetRequest
Decode UpdateRegexMatchSetRequest
Encode UpdateRegexMatchSetRequest
```

#### `newUpdateRegexMatchSetRequest`

``` purescript
newUpdateRegexMatchSetRequest :: ChangeToken -> ResourceId -> RegexMatchSetUpdates -> UpdateRegexMatchSetRequest
```

Constructs UpdateRegexMatchSetRequest from required parameters

#### `newUpdateRegexMatchSetRequest'`

``` purescript
newUpdateRegexMatchSetRequest' :: ChangeToken -> ResourceId -> RegexMatchSetUpdates -> ({ "RegexMatchSetId" :: ResourceId, "Updates" :: RegexMatchSetUpdates, "ChangeToken" :: ChangeToken } -> { "RegexMatchSetId" :: ResourceId, "Updates" :: RegexMatchSetUpdates, "ChangeToken" :: ChangeToken }) -> UpdateRegexMatchSetRequest
```

Constructs UpdateRegexMatchSetRequest's fields from required parameters

#### `UpdateRegexMatchSetResponse`

``` purescript
newtype UpdateRegexMatchSetResponse
  = UpdateRegexMatchSetResponse { "ChangeToken" :: Maybe (ChangeToken) }
```

##### Instances
``` purescript
Newtype UpdateRegexMatchSetResponse _
Generic UpdateRegexMatchSetResponse _
Show UpdateRegexMatchSetResponse
Decode UpdateRegexMatchSetResponse
Encode UpdateRegexMatchSetResponse
```

#### `newUpdateRegexMatchSetResponse`

``` purescript
newUpdateRegexMatchSetResponse :: UpdateRegexMatchSetResponse
```

Constructs UpdateRegexMatchSetResponse from required parameters

#### `newUpdateRegexMatchSetResponse'`

``` purescript
newUpdateRegexMatchSetResponse' :: ({ "ChangeToken" :: Maybe (ChangeToken) } -> { "ChangeToken" :: Maybe (ChangeToken) }) -> UpdateRegexMatchSetResponse
```

Constructs UpdateRegexMatchSetResponse's fields from required parameters

#### `UpdateRegexPatternSetRequest`

``` purescript
newtype UpdateRegexPatternSetRequest
  = UpdateRegexPatternSetRequest { "RegexPatternSetId" :: ResourceId, "Updates" :: RegexPatternSetUpdates, "ChangeToken" :: ChangeToken }
```

##### Instances
``` purescript
Newtype UpdateRegexPatternSetRequest _
Generic UpdateRegexPatternSetRequest _
Show UpdateRegexPatternSetRequest
Decode UpdateRegexPatternSetRequest
Encode UpdateRegexPatternSetRequest
```

#### `newUpdateRegexPatternSetRequest`

``` purescript
newUpdateRegexPatternSetRequest :: ChangeToken -> ResourceId -> RegexPatternSetUpdates -> UpdateRegexPatternSetRequest
```

Constructs UpdateRegexPatternSetRequest from required parameters

#### `newUpdateRegexPatternSetRequest'`

``` purescript
newUpdateRegexPatternSetRequest' :: ChangeToken -> ResourceId -> RegexPatternSetUpdates -> ({ "RegexPatternSetId" :: ResourceId, "Updates" :: RegexPatternSetUpdates, "ChangeToken" :: ChangeToken } -> { "RegexPatternSetId" :: ResourceId, "Updates" :: RegexPatternSetUpdates, "ChangeToken" :: ChangeToken }) -> UpdateRegexPatternSetRequest
```

Constructs UpdateRegexPatternSetRequest's fields from required parameters

#### `UpdateRegexPatternSetResponse`

``` purescript
newtype UpdateRegexPatternSetResponse
  = UpdateRegexPatternSetResponse { "ChangeToken" :: Maybe (ChangeToken) }
```

##### Instances
``` purescript
Newtype UpdateRegexPatternSetResponse _
Generic UpdateRegexPatternSetResponse _
Show UpdateRegexPatternSetResponse
Decode UpdateRegexPatternSetResponse
Encode UpdateRegexPatternSetResponse
```

#### `newUpdateRegexPatternSetResponse`

``` purescript
newUpdateRegexPatternSetResponse :: UpdateRegexPatternSetResponse
```

Constructs UpdateRegexPatternSetResponse from required parameters

#### `newUpdateRegexPatternSetResponse'`

``` purescript
newUpdateRegexPatternSetResponse' :: ({ "ChangeToken" :: Maybe (ChangeToken) } -> { "ChangeToken" :: Maybe (ChangeToken) }) -> UpdateRegexPatternSetResponse
```

Constructs UpdateRegexPatternSetResponse's fields from required parameters

#### `UpdateRuleGroupRequest`

``` purescript
newtype UpdateRuleGroupRequest
  = UpdateRuleGroupRequest { "RuleGroupId" :: ResourceId, "Updates" :: RuleGroupUpdates, "ChangeToken" :: ChangeToken }
```

##### Instances
``` purescript
Newtype UpdateRuleGroupRequest _
Generic UpdateRuleGroupRequest _
Show UpdateRuleGroupRequest
Decode UpdateRuleGroupRequest
Encode UpdateRuleGroupRequest
```

#### `newUpdateRuleGroupRequest`

``` purescript
newUpdateRuleGroupRequest :: ChangeToken -> ResourceId -> RuleGroupUpdates -> UpdateRuleGroupRequest
```

Constructs UpdateRuleGroupRequest from required parameters

#### `newUpdateRuleGroupRequest'`

``` purescript
newUpdateRuleGroupRequest' :: ChangeToken -> ResourceId -> RuleGroupUpdates -> ({ "RuleGroupId" :: ResourceId, "Updates" :: RuleGroupUpdates, "ChangeToken" :: ChangeToken } -> { "RuleGroupId" :: ResourceId, "Updates" :: RuleGroupUpdates, "ChangeToken" :: ChangeToken }) -> UpdateRuleGroupRequest
```

Constructs UpdateRuleGroupRequest's fields from required parameters

#### `UpdateRuleGroupResponse`

``` purescript
newtype UpdateRuleGroupResponse
  = UpdateRuleGroupResponse { "ChangeToken" :: Maybe (ChangeToken) }
```

##### Instances
``` purescript
Newtype UpdateRuleGroupResponse _
Generic UpdateRuleGroupResponse _
Show UpdateRuleGroupResponse
Decode UpdateRuleGroupResponse
Encode UpdateRuleGroupResponse
```

#### `newUpdateRuleGroupResponse`

``` purescript
newUpdateRuleGroupResponse :: UpdateRuleGroupResponse
```

Constructs UpdateRuleGroupResponse from required parameters

#### `newUpdateRuleGroupResponse'`

``` purescript
newUpdateRuleGroupResponse' :: ({ "ChangeToken" :: Maybe (ChangeToken) } -> { "ChangeToken" :: Maybe (ChangeToken) }) -> UpdateRuleGroupResponse
```

Constructs UpdateRuleGroupResponse's fields from required parameters

#### `UpdateRuleRequest`

``` purescript
newtype UpdateRuleRequest
  = UpdateRuleRequest { "RuleId" :: ResourceId, "ChangeToken" :: ChangeToken, "Updates" :: RuleUpdates }
```

##### Instances
``` purescript
Newtype UpdateRuleRequest _
Generic UpdateRuleRequest _
Show UpdateRuleRequest
Decode UpdateRuleRequest
Encode UpdateRuleRequest
```

#### `newUpdateRuleRequest`

``` purescript
newUpdateRuleRequest :: ChangeToken -> ResourceId -> RuleUpdates -> UpdateRuleRequest
```

Constructs UpdateRuleRequest from required parameters

#### `newUpdateRuleRequest'`

``` purescript
newUpdateRuleRequest' :: ChangeToken -> ResourceId -> RuleUpdates -> ({ "RuleId" :: ResourceId, "ChangeToken" :: ChangeToken, "Updates" :: RuleUpdates } -> { "RuleId" :: ResourceId, "ChangeToken" :: ChangeToken, "Updates" :: RuleUpdates }) -> UpdateRuleRequest
```

Constructs UpdateRuleRequest's fields from required parameters

#### `UpdateRuleResponse`

``` purescript
newtype UpdateRuleResponse
  = UpdateRuleResponse { "ChangeToken" :: Maybe (ChangeToken) }
```

##### Instances
``` purescript
Newtype UpdateRuleResponse _
Generic UpdateRuleResponse _
Show UpdateRuleResponse
Decode UpdateRuleResponse
Encode UpdateRuleResponse
```

#### `newUpdateRuleResponse`

``` purescript
newUpdateRuleResponse :: UpdateRuleResponse
```

Constructs UpdateRuleResponse from required parameters

#### `newUpdateRuleResponse'`

``` purescript
newUpdateRuleResponse' :: ({ "ChangeToken" :: Maybe (ChangeToken) } -> { "ChangeToken" :: Maybe (ChangeToken) }) -> UpdateRuleResponse
```

Constructs UpdateRuleResponse's fields from required parameters

#### `UpdateSizeConstraintSetRequest`

``` purescript
newtype UpdateSizeConstraintSetRequest
  = UpdateSizeConstraintSetRequest { "SizeConstraintSetId" :: ResourceId, "ChangeToken" :: ChangeToken, "Updates" :: SizeConstraintSetUpdates }
```

##### Instances
``` purescript
Newtype UpdateSizeConstraintSetRequest _
Generic UpdateSizeConstraintSetRequest _
Show UpdateSizeConstraintSetRequest
Decode UpdateSizeConstraintSetRequest
Encode UpdateSizeConstraintSetRequest
```

#### `newUpdateSizeConstraintSetRequest`

``` purescript
newUpdateSizeConstraintSetRequest :: ChangeToken -> ResourceId -> SizeConstraintSetUpdates -> UpdateSizeConstraintSetRequest
```

Constructs UpdateSizeConstraintSetRequest from required parameters

#### `newUpdateSizeConstraintSetRequest'`

``` purescript
newUpdateSizeConstraintSetRequest' :: ChangeToken -> ResourceId -> SizeConstraintSetUpdates -> ({ "SizeConstraintSetId" :: ResourceId, "ChangeToken" :: ChangeToken, "Updates" :: SizeConstraintSetUpdates } -> { "SizeConstraintSetId" :: ResourceId, "ChangeToken" :: ChangeToken, "Updates" :: SizeConstraintSetUpdates }) -> UpdateSizeConstraintSetRequest
```

Constructs UpdateSizeConstraintSetRequest's fields from required parameters

#### `UpdateSizeConstraintSetResponse`

``` purescript
newtype UpdateSizeConstraintSetResponse
  = UpdateSizeConstraintSetResponse { "ChangeToken" :: Maybe (ChangeToken) }
```

##### Instances
``` purescript
Newtype UpdateSizeConstraintSetResponse _
Generic UpdateSizeConstraintSetResponse _
Show UpdateSizeConstraintSetResponse
Decode UpdateSizeConstraintSetResponse
Encode UpdateSizeConstraintSetResponse
```

#### `newUpdateSizeConstraintSetResponse`

``` purescript
newUpdateSizeConstraintSetResponse :: UpdateSizeConstraintSetResponse
```

Constructs UpdateSizeConstraintSetResponse from required parameters

#### `newUpdateSizeConstraintSetResponse'`

``` purescript
newUpdateSizeConstraintSetResponse' :: ({ "ChangeToken" :: Maybe (ChangeToken) } -> { "ChangeToken" :: Maybe (ChangeToken) }) -> UpdateSizeConstraintSetResponse
```

Constructs UpdateSizeConstraintSetResponse's fields from required parameters

#### `UpdateSqlInjectionMatchSetRequest`

``` purescript
newtype UpdateSqlInjectionMatchSetRequest
  = UpdateSqlInjectionMatchSetRequest { "SqlInjectionMatchSetId" :: ResourceId, "ChangeToken" :: ChangeToken, "Updates" :: SqlInjectionMatchSetUpdates }
```

<p>A request to update a <a>SqlInjectionMatchSet</a>.</p>

##### Instances
``` purescript
Newtype UpdateSqlInjectionMatchSetRequest _
Generic UpdateSqlInjectionMatchSetRequest _
Show UpdateSqlInjectionMatchSetRequest
Decode UpdateSqlInjectionMatchSetRequest
Encode UpdateSqlInjectionMatchSetRequest
```

#### `newUpdateSqlInjectionMatchSetRequest`

``` purescript
newUpdateSqlInjectionMatchSetRequest :: ChangeToken -> ResourceId -> SqlInjectionMatchSetUpdates -> UpdateSqlInjectionMatchSetRequest
```

Constructs UpdateSqlInjectionMatchSetRequest from required parameters

#### `newUpdateSqlInjectionMatchSetRequest'`

``` purescript
newUpdateSqlInjectionMatchSetRequest' :: ChangeToken -> ResourceId -> SqlInjectionMatchSetUpdates -> ({ "SqlInjectionMatchSetId" :: ResourceId, "ChangeToken" :: ChangeToken, "Updates" :: SqlInjectionMatchSetUpdates } -> { "SqlInjectionMatchSetId" :: ResourceId, "ChangeToken" :: ChangeToken, "Updates" :: SqlInjectionMatchSetUpdates }) -> UpdateSqlInjectionMatchSetRequest
```

Constructs UpdateSqlInjectionMatchSetRequest's fields from required parameters

#### `UpdateSqlInjectionMatchSetResponse`

``` purescript
newtype UpdateSqlInjectionMatchSetResponse
  = UpdateSqlInjectionMatchSetResponse { "ChangeToken" :: Maybe (ChangeToken) }
```

<p>The response to an <a>UpdateSqlInjectionMatchSets</a> request.</p>

##### Instances
``` purescript
Newtype UpdateSqlInjectionMatchSetResponse _
Generic UpdateSqlInjectionMatchSetResponse _
Show UpdateSqlInjectionMatchSetResponse
Decode UpdateSqlInjectionMatchSetResponse
Encode UpdateSqlInjectionMatchSetResponse
```

#### `newUpdateSqlInjectionMatchSetResponse`

``` purescript
newUpdateSqlInjectionMatchSetResponse :: UpdateSqlInjectionMatchSetResponse
```

Constructs UpdateSqlInjectionMatchSetResponse from required parameters

#### `newUpdateSqlInjectionMatchSetResponse'`

``` purescript
newUpdateSqlInjectionMatchSetResponse' :: ({ "ChangeToken" :: Maybe (ChangeToken) } -> { "ChangeToken" :: Maybe (ChangeToken) }) -> UpdateSqlInjectionMatchSetResponse
```

Constructs UpdateSqlInjectionMatchSetResponse's fields from required parameters

#### `UpdateWebACLRequest`

``` purescript
newtype UpdateWebACLRequest
  = UpdateWebACLRequest { "WebACLId" :: ResourceId, "ChangeToken" :: ChangeToken, "Updates" :: Maybe (WebACLUpdates), "DefaultAction" :: Maybe (WafAction) }
```

##### Instances
``` purescript
Newtype UpdateWebACLRequest _
Generic UpdateWebACLRequest _
Show UpdateWebACLRequest
Decode UpdateWebACLRequest
Encode UpdateWebACLRequest
```

#### `newUpdateWebACLRequest`

``` purescript
newUpdateWebACLRequest :: ChangeToken -> ResourceId -> UpdateWebACLRequest
```

Constructs UpdateWebACLRequest from required parameters

#### `newUpdateWebACLRequest'`

``` purescript
newUpdateWebACLRequest' :: ChangeToken -> ResourceId -> ({ "WebACLId" :: ResourceId, "ChangeToken" :: ChangeToken, "Updates" :: Maybe (WebACLUpdates), "DefaultAction" :: Maybe (WafAction) } -> { "WebACLId" :: ResourceId, "ChangeToken" :: ChangeToken, "Updates" :: Maybe (WebACLUpdates), "DefaultAction" :: Maybe (WafAction) }) -> UpdateWebACLRequest
```

Constructs UpdateWebACLRequest's fields from required parameters

#### `UpdateWebACLResponse`

``` purescript
newtype UpdateWebACLResponse
  = UpdateWebACLResponse { "ChangeToken" :: Maybe (ChangeToken) }
```

##### Instances
``` purescript
Newtype UpdateWebACLResponse _
Generic UpdateWebACLResponse _
Show UpdateWebACLResponse
Decode UpdateWebACLResponse
Encode UpdateWebACLResponse
```

#### `newUpdateWebACLResponse`

``` purescript
newUpdateWebACLResponse :: UpdateWebACLResponse
```

Constructs UpdateWebACLResponse from required parameters

#### `newUpdateWebACLResponse'`

``` purescript
newUpdateWebACLResponse' :: ({ "ChangeToken" :: Maybe (ChangeToken) } -> { "ChangeToken" :: Maybe (ChangeToken) }) -> UpdateWebACLResponse
```

Constructs UpdateWebACLResponse's fields from required parameters

#### `UpdateXssMatchSetRequest`

``` purescript
newtype UpdateXssMatchSetRequest
  = UpdateXssMatchSetRequest { "XssMatchSetId" :: ResourceId, "ChangeToken" :: ChangeToken, "Updates" :: XssMatchSetUpdates }
```

<p>A request to update an <a>XssMatchSet</a>.</p>

##### Instances
``` purescript
Newtype UpdateXssMatchSetRequest _
Generic UpdateXssMatchSetRequest _
Show UpdateXssMatchSetRequest
Decode UpdateXssMatchSetRequest
Encode UpdateXssMatchSetRequest
```

#### `newUpdateXssMatchSetRequest`

``` purescript
newUpdateXssMatchSetRequest :: ChangeToken -> XssMatchSetUpdates -> ResourceId -> UpdateXssMatchSetRequest
```

Constructs UpdateXssMatchSetRequest from required parameters

#### `newUpdateXssMatchSetRequest'`

``` purescript
newUpdateXssMatchSetRequest' :: ChangeToken -> XssMatchSetUpdates -> ResourceId -> ({ "XssMatchSetId" :: ResourceId, "ChangeToken" :: ChangeToken, "Updates" :: XssMatchSetUpdates } -> { "XssMatchSetId" :: ResourceId, "ChangeToken" :: ChangeToken, "Updates" :: XssMatchSetUpdates }) -> UpdateXssMatchSetRequest
```

Constructs UpdateXssMatchSetRequest's fields from required parameters

#### `UpdateXssMatchSetResponse`

``` purescript
newtype UpdateXssMatchSetResponse
  = UpdateXssMatchSetResponse { "ChangeToken" :: Maybe (ChangeToken) }
```

<p>The response to an <a>UpdateXssMatchSets</a> request.</p>

##### Instances
``` purescript
Newtype UpdateXssMatchSetResponse _
Generic UpdateXssMatchSetResponse _
Show UpdateXssMatchSetResponse
Decode UpdateXssMatchSetResponse
Encode UpdateXssMatchSetResponse
```

#### `newUpdateXssMatchSetResponse`

``` purescript
newUpdateXssMatchSetResponse :: UpdateXssMatchSetResponse
```

Constructs UpdateXssMatchSetResponse from required parameters

#### `newUpdateXssMatchSetResponse'`

``` purescript
newUpdateXssMatchSetResponse' :: ({ "ChangeToken" :: Maybe (ChangeToken) } -> { "ChangeToken" :: Maybe (ChangeToken) }) -> UpdateXssMatchSetResponse
```

Constructs UpdateXssMatchSetResponse's fields from required parameters

#### `WAFDisallowedNameException`

``` purescript
newtype WAFDisallowedNameException
  = WAFDisallowedNameException { message :: Maybe (ErrorMessage') }
```

<p>The name specified is invalid.</p>

##### Instances
``` purescript
Newtype WAFDisallowedNameException _
Generic WAFDisallowedNameException _
Show WAFDisallowedNameException
Decode WAFDisallowedNameException
Encode WAFDisallowedNameException
```

#### `newWAFDisallowedNameException`

``` purescript
newWAFDisallowedNameException :: WAFDisallowedNameException
```

Constructs WAFDisallowedNameException from required parameters

#### `newWAFDisallowedNameException'`

``` purescript
newWAFDisallowedNameException' :: ({ message :: Maybe (ErrorMessage') } -> { message :: Maybe (ErrorMessage') }) -> WAFDisallowedNameException
```

Constructs WAFDisallowedNameException's fields from required parameters

#### `WAFInternalErrorException`

``` purescript
newtype WAFInternalErrorException
  = WAFInternalErrorException { message :: Maybe (ErrorMessage') }
```

<p>The operation failed because of a system problem, even though the request was valid. Retry your request.</p>

##### Instances
``` purescript
Newtype WAFInternalErrorException _
Generic WAFInternalErrorException _
Show WAFInternalErrorException
Decode WAFInternalErrorException
Encode WAFInternalErrorException
```

#### `newWAFInternalErrorException`

``` purescript
newWAFInternalErrorException :: WAFInternalErrorException
```

Constructs WAFInternalErrorException from required parameters

#### `newWAFInternalErrorException'`

``` purescript
newWAFInternalErrorException' :: ({ message :: Maybe (ErrorMessage') } -> { message :: Maybe (ErrorMessage') }) -> WAFInternalErrorException
```

Constructs WAFInternalErrorException's fields from required parameters

#### `WAFInvalidAccountException`

``` purescript
newtype WAFInvalidAccountException
  = WAFInvalidAccountException NoArguments
```

<p>The operation failed because you tried to create, update, or delete an object by using an invalid account identifier.</p>

##### Instances
``` purescript
Newtype WAFInvalidAccountException _
Generic WAFInvalidAccountException _
Show WAFInvalidAccountException
Decode WAFInvalidAccountException
Encode WAFInvalidAccountException
```

#### `WAFInvalidOperationException`

``` purescript
newtype WAFInvalidOperationException
  = WAFInvalidOperationException { message :: Maybe (ErrorMessage') }
```

<p>The operation failed because there was nothing to do. For example:</p> <ul> <li> <p>You tried to remove a <code>Rule</code> from a <code>WebACL</code>, but the <code>Rule</code> isn't in the specified <code>WebACL</code>.</p> </li> <li> <p>You tried to remove an IP address from an <code>IPSet</code>, but the IP address isn't in the specified <code>IPSet</code>.</p> </li> <li> <p>You tried to remove a <code>ByteMatchTuple</code> from a <code>ByteMatchSet</code>, but the <code>ByteMatchTuple</code> isn't in the specified <code>WebACL</code>.</p> </li> <li> <p>You tried to add a <code>Rule</code> to a <code>WebACL</code>, but the <code>Rule</code> already exists in the specified <code>WebACL</code>.</p> </li> <li> <p>You tried to add an IP address to an <code>IPSet</code>, but the IP address already exists in the specified <code>IPSet</code>.</p> </li> <li> <p>You tried to add a <code>ByteMatchTuple</code> to a <code>ByteMatchSet</code>, but the <code>ByteMatchTuple</code> already exists in the specified <code>WebACL</code>.</p> </li> </ul>

##### Instances
``` purescript
Newtype WAFInvalidOperationException _
Generic WAFInvalidOperationException _
Show WAFInvalidOperationException
Decode WAFInvalidOperationException
Encode WAFInvalidOperationException
```

#### `newWAFInvalidOperationException`

``` purescript
newWAFInvalidOperationException :: WAFInvalidOperationException
```

Constructs WAFInvalidOperationException from required parameters

#### `newWAFInvalidOperationException'`

``` purescript
newWAFInvalidOperationException' :: ({ message :: Maybe (ErrorMessage') } -> { message :: Maybe (ErrorMessage') }) -> WAFInvalidOperationException
```

Constructs WAFInvalidOperationException's fields from required parameters

#### `WAFInvalidParameterException`

``` purescript
newtype WAFInvalidParameterException
  = WAFInvalidParameterException { field :: Maybe (ParameterExceptionField), parameter :: Maybe (ParameterExceptionParameter), reason :: Maybe (ParameterExceptionReason) }
```

<p>The operation failed because AWS WAF didn't recognize a parameter in the request. For example:</p> <ul> <li> <p>You specified an invalid parameter name.</p> </li> <li> <p>You specified an invalid value.</p> </li> <li> <p>You tried to update an object (<code>ByteMatchSet</code>, <code>IPSet</code>, <code>Rule</code>, or <code>WebACL</code>) using an action other than <code>INSERT</code> or <code>DELETE</code>.</p> </li> <li> <p>You tried to create a <code>WebACL</code> with a <code>DefaultAction</code> <code>Type</code> other than <code>ALLOW</code>, <code>BLOCK</code>, or <code>COUNT</code>.</p> </li> <li> <p>You tried to create a <code>RateBasedRule</code> with a <code>RateKey</code> value other than <code>IP</code>.</p> </li> <li> <p>You tried to update a <code>WebACL</code> with a <code>WafAction</code> <code>Type</code> other than <code>ALLOW</code>, <code>BLOCK</code>, or <code>COUNT</code>.</p> </li> <li> <p>You tried to update a <code>ByteMatchSet</code> with a <code>FieldToMatch</code> <code>Type</code> other than HEADER, METHOD, QUERY_STRING, URI, or BODY.</p> </li> <li> <p>You tried to update a <code>ByteMatchSet</code> with a <code>Field</code> of <code>HEADER</code> but no value for <code>Data</code>.</p> </li> <li> <p>Your request references an ARN that is malformed, or corresponds to a resource with which a web ACL cannot be associated.</p> </li> </ul>

##### Instances
``` purescript
Newtype WAFInvalidParameterException _
Generic WAFInvalidParameterException _
Show WAFInvalidParameterException
Decode WAFInvalidParameterException
Encode WAFInvalidParameterException
```

#### `newWAFInvalidParameterException`

``` purescript
newWAFInvalidParameterException :: WAFInvalidParameterException
```

Constructs WAFInvalidParameterException from required parameters

#### `newWAFInvalidParameterException'`

``` purescript
newWAFInvalidParameterException' :: ({ field :: Maybe (ParameterExceptionField), parameter :: Maybe (ParameterExceptionParameter), reason :: Maybe (ParameterExceptionReason) } -> { field :: Maybe (ParameterExceptionField), parameter :: Maybe (ParameterExceptionParameter), reason :: Maybe (ParameterExceptionReason) }) -> WAFInvalidParameterException
```

Constructs WAFInvalidParameterException's fields from required parameters

#### `WAFInvalidPermissionPolicyException`

``` purescript
newtype WAFInvalidPermissionPolicyException
  = WAFInvalidPermissionPolicyException { message :: Maybe (ErrorMessage') }
```

<p>The operation failed because the specified policy is not in the proper format. </p> <p>The policy is subject to the following restrictions:</p> <ul> <li> <p>You can attach only one policy with each <code>PutPermissionPolicy</code> request.</p> </li> <li> <p>The policy must include an <code>Effect</code>, <code>Action</code> and <code>Principal</code>. </p> </li> <li> <p> <code>Effect</code> must specify <code>Allow</code>.</p> </li> <li> <p>The <code>Action</code> in the policy must be <code>waf:UpdateWebACL</code> or <code>waf-regional:UpdateWebACL</code>. Any extra or wildcard actions in the policy will be rejected.</p> </li> <li> <p>The policy cannot include a <code>Resource</code> parameter.</p> </li> <li> <p>The ARN in the request must be a valid WAF RuleGroup ARN and the RuleGroup must exist in the same region.</p> </li> <li> <p>The user making the request must be the owner of the RuleGroup.</p> </li> <li> <p>Your policy must be composed using IAM Policy version 2012-10-17.</p> </li> </ul>

##### Instances
``` purescript
Newtype WAFInvalidPermissionPolicyException _
Generic WAFInvalidPermissionPolicyException _
Show WAFInvalidPermissionPolicyException
Decode WAFInvalidPermissionPolicyException
Encode WAFInvalidPermissionPolicyException
```

#### `newWAFInvalidPermissionPolicyException`

``` purescript
newWAFInvalidPermissionPolicyException :: WAFInvalidPermissionPolicyException
```

Constructs WAFInvalidPermissionPolicyException from required parameters

#### `newWAFInvalidPermissionPolicyException'`

``` purescript
newWAFInvalidPermissionPolicyException' :: ({ message :: Maybe (ErrorMessage') } -> { message :: Maybe (ErrorMessage') }) -> WAFInvalidPermissionPolicyException
```

Constructs WAFInvalidPermissionPolicyException's fields from required parameters

#### `WAFInvalidRegexPatternException`

``` purescript
newtype WAFInvalidRegexPatternException
  = WAFInvalidRegexPatternException { message :: Maybe (ErrorMessage') }
```

<p>The regular expression (regex) you specified in <code>RegexPatternString</code> is invalid.</p>

##### Instances
``` purescript
Newtype WAFInvalidRegexPatternException _
Generic WAFInvalidRegexPatternException _
Show WAFInvalidRegexPatternException
Decode WAFInvalidRegexPatternException
Encode WAFInvalidRegexPatternException
```

#### `newWAFInvalidRegexPatternException`

``` purescript
newWAFInvalidRegexPatternException :: WAFInvalidRegexPatternException
```

Constructs WAFInvalidRegexPatternException from required parameters

#### `newWAFInvalidRegexPatternException'`

``` purescript
newWAFInvalidRegexPatternException' :: ({ message :: Maybe (ErrorMessage') } -> { message :: Maybe (ErrorMessage') }) -> WAFInvalidRegexPatternException
```

Constructs WAFInvalidRegexPatternException's fields from required parameters

#### `WAFLimitsExceededException`

``` purescript
newtype WAFLimitsExceededException
  = WAFLimitsExceededException { message :: Maybe (ErrorMessage') }
```

<p>The operation exceeds a resource limit, for example, the maximum number of <code>WebACL</code> objects that you can create for an AWS account. For more information, see <a href="http://docs.aws.amazon.com/waf/latest/developerguide/limits.html">Limits</a> in the <i>AWS WAF Developer Guide</i>.</p>

##### Instances
``` purescript
Newtype WAFLimitsExceededException _
Generic WAFLimitsExceededException _
Show WAFLimitsExceededException
Decode WAFLimitsExceededException
Encode WAFLimitsExceededException
```

#### `newWAFLimitsExceededException`

``` purescript
newWAFLimitsExceededException :: WAFLimitsExceededException
```

Constructs WAFLimitsExceededException from required parameters

#### `newWAFLimitsExceededException'`

``` purescript
newWAFLimitsExceededException' :: ({ message :: Maybe (ErrorMessage') } -> { message :: Maybe (ErrorMessage') }) -> WAFLimitsExceededException
```

Constructs WAFLimitsExceededException's fields from required parameters

#### `WAFNonEmptyEntityException`

``` purescript
newtype WAFNonEmptyEntityException
  = WAFNonEmptyEntityException { message :: Maybe (ErrorMessage') }
```

<p>The operation failed because you tried to delete an object that isn't empty. For example:</p> <ul> <li> <p>You tried to delete a <code>WebACL</code> that still contains one or more <code>Rule</code> objects.</p> </li> <li> <p>You tried to delete a <code>Rule</code> that still contains one or more <code>ByteMatchSet</code> objects or other predicates.</p> </li> <li> <p>You tried to delete a <code>ByteMatchSet</code> that contains one or more <code>ByteMatchTuple</code> objects.</p> </li> <li> <p>You tried to delete an <code>IPSet</code> that references one or more IP addresses.</p> </li> </ul>

##### Instances
``` purescript
Newtype WAFNonEmptyEntityException _
Generic WAFNonEmptyEntityException _
Show WAFNonEmptyEntityException
Decode WAFNonEmptyEntityException
Encode WAFNonEmptyEntityException
```

#### `newWAFNonEmptyEntityException`

``` purescript
newWAFNonEmptyEntityException :: WAFNonEmptyEntityException
```

Constructs WAFNonEmptyEntityException from required parameters

#### `newWAFNonEmptyEntityException'`

``` purescript
newWAFNonEmptyEntityException' :: ({ message :: Maybe (ErrorMessage') } -> { message :: Maybe (ErrorMessage') }) -> WAFNonEmptyEntityException
```

Constructs WAFNonEmptyEntityException's fields from required parameters

#### `WAFNonexistentContainerException`

``` purescript
newtype WAFNonexistentContainerException
  = WAFNonexistentContainerException { message :: Maybe (ErrorMessage') }
```

<p>The operation failed because you tried to add an object to or delete an object from another object that doesn't exist. For example:</p> <ul> <li> <p>You tried to add a <code>Rule</code> to or delete a <code>Rule</code> from a <code>WebACL</code> that doesn't exist.</p> </li> <li> <p>You tried to add a <code>ByteMatchSet</code> to or delete a <code>ByteMatchSet</code> from a <code>Rule</code> that doesn't exist.</p> </li> <li> <p>You tried to add an IP address to or delete an IP address from an <code>IPSet</code> that doesn't exist.</p> </li> <li> <p>You tried to add a <code>ByteMatchTuple</code> to or delete a <code>ByteMatchTuple</code> from a <code>ByteMatchSet</code> that doesn't exist.</p> </li> </ul>

##### Instances
``` purescript
Newtype WAFNonexistentContainerException _
Generic WAFNonexistentContainerException _
Show WAFNonexistentContainerException
Decode WAFNonexistentContainerException
Encode WAFNonexistentContainerException
```

#### `newWAFNonexistentContainerException`

``` purescript
newWAFNonexistentContainerException :: WAFNonexistentContainerException
```

Constructs WAFNonexistentContainerException from required parameters

#### `newWAFNonexistentContainerException'`

``` purescript
newWAFNonexistentContainerException' :: ({ message :: Maybe (ErrorMessage') } -> { message :: Maybe (ErrorMessage') }) -> WAFNonexistentContainerException
```

Constructs WAFNonexistentContainerException's fields from required parameters

#### `WAFNonexistentItemException`

``` purescript
newtype WAFNonexistentItemException
  = WAFNonexistentItemException { message :: Maybe (ErrorMessage') }
```

<p>The operation failed because the referenced object doesn't exist.</p>

##### Instances
``` purescript
Newtype WAFNonexistentItemException _
Generic WAFNonexistentItemException _
Show WAFNonexistentItemException
Decode WAFNonexistentItemException
Encode WAFNonexistentItemException
```

#### `newWAFNonexistentItemException`

``` purescript
newWAFNonexistentItemException :: WAFNonexistentItemException
```

Constructs WAFNonexistentItemException from required parameters

#### `newWAFNonexistentItemException'`

``` purescript
newWAFNonexistentItemException' :: ({ message :: Maybe (ErrorMessage') } -> { message :: Maybe (ErrorMessage') }) -> WAFNonexistentItemException
```

Constructs WAFNonexistentItemException's fields from required parameters

#### `WAFReferencedItemException`

``` purescript
newtype WAFReferencedItemException
  = WAFReferencedItemException { message :: Maybe (ErrorMessage') }
```

<p>The operation failed because you tried to delete an object that is still in use. For example:</p> <ul> <li> <p>You tried to delete a <code>ByteMatchSet</code> that is still referenced by a <code>Rule</code>.</p> </li> <li> <p>You tried to delete a <code>Rule</code> that is still referenced by a <code>WebACL</code>.</p> </li> </ul>

##### Instances
``` purescript
Newtype WAFReferencedItemException _
Generic WAFReferencedItemException _
Show WAFReferencedItemException
Decode WAFReferencedItemException
Encode WAFReferencedItemException
```

#### `newWAFReferencedItemException`

``` purescript
newWAFReferencedItemException :: WAFReferencedItemException
```

Constructs WAFReferencedItemException from required parameters

#### `newWAFReferencedItemException'`

``` purescript
newWAFReferencedItemException' :: ({ message :: Maybe (ErrorMessage') } -> { message :: Maybe (ErrorMessage') }) -> WAFReferencedItemException
```

Constructs WAFReferencedItemException's fields from required parameters

#### `WAFStaleDataException`

``` purescript
newtype WAFStaleDataException
  = WAFStaleDataException { message :: Maybe (ErrorMessage') }
```

<p>The operation failed because you tried to create, update, or delete an object by using a change token that has already been used.</p>

##### Instances
``` purescript
Newtype WAFStaleDataException _
Generic WAFStaleDataException _
Show WAFStaleDataException
Decode WAFStaleDataException
Encode WAFStaleDataException
```

#### `newWAFStaleDataException`

``` purescript
newWAFStaleDataException :: WAFStaleDataException
```

Constructs WAFStaleDataException from required parameters

#### `newWAFStaleDataException'`

``` purescript
newWAFStaleDataException' :: ({ message :: Maybe (ErrorMessage') } -> { message :: Maybe (ErrorMessage') }) -> WAFStaleDataException
```

Constructs WAFStaleDataException's fields from required parameters

#### `WAFSubscriptionNotFoundException`

``` purescript
newtype WAFSubscriptionNotFoundException
  = WAFSubscriptionNotFoundException { message :: Maybe (ErrorMessage') }
```

<p>The specified subscription does not exist.</p>

##### Instances
``` purescript
Newtype WAFSubscriptionNotFoundException _
Generic WAFSubscriptionNotFoundException _
Show WAFSubscriptionNotFoundException
Decode WAFSubscriptionNotFoundException
Encode WAFSubscriptionNotFoundException
```

#### `newWAFSubscriptionNotFoundException`

``` purescript
newWAFSubscriptionNotFoundException :: WAFSubscriptionNotFoundException
```

Constructs WAFSubscriptionNotFoundException from required parameters

#### `newWAFSubscriptionNotFoundException'`

``` purescript
newWAFSubscriptionNotFoundException' :: ({ message :: Maybe (ErrorMessage') } -> { message :: Maybe (ErrorMessage') }) -> WAFSubscriptionNotFoundException
```

Constructs WAFSubscriptionNotFoundException's fields from required parameters

#### `WAFUnavailableEntityException`

``` purescript
newtype WAFUnavailableEntityException
  = WAFUnavailableEntityException { message :: Maybe (ErrorMessage') }
```

<p>The operation failed because the entity referenced is temporarily unavailable. Retry your request.</p>

##### Instances
``` purescript
Newtype WAFUnavailableEntityException _
Generic WAFUnavailableEntityException _
Show WAFUnavailableEntityException
Decode WAFUnavailableEntityException
Encode WAFUnavailableEntityException
```

#### `newWAFUnavailableEntityException`

``` purescript
newWAFUnavailableEntityException :: WAFUnavailableEntityException
```

Constructs WAFUnavailableEntityException from required parameters

#### `newWAFUnavailableEntityException'`

``` purescript
newWAFUnavailableEntityException' :: ({ message :: Maybe (ErrorMessage') } -> { message :: Maybe (ErrorMessage') }) -> WAFUnavailableEntityException
```

Constructs WAFUnavailableEntityException's fields from required parameters

#### `WafAction`

``` purescript
newtype WafAction
  = WafAction { "Type" :: WafActionType }
```

<p>For the action that is associated with a rule in a <code>WebACL</code>, specifies the action that you want AWS WAF to perform when a web request matches all of the conditions in a rule. For the default action in a <code>WebACL</code>, specifies the action that you want AWS WAF to take when a web request doesn't match all of the conditions in any of the rules in a <code>WebACL</code>. </p>

##### Instances
``` purescript
Newtype WafAction _
Generic WafAction _
Show WafAction
Decode WafAction
Encode WafAction
```

#### `newWafAction`

``` purescript
newWafAction :: WafActionType -> WafAction
```

Constructs WafAction from required parameters

#### `newWafAction'`

``` purescript
newWafAction' :: WafActionType -> ({ "Type" :: WafActionType } -> { "Type" :: WafActionType }) -> WafAction
```

Constructs WafAction's fields from required parameters

#### `WafActionType`

``` purescript
newtype WafActionType
  = WafActionType String
```

##### Instances
``` purescript
Newtype WafActionType _
Generic WafActionType _
Show WafActionType
Decode WafActionType
Encode WafActionType
```

#### `WafOverrideAction`

``` purescript
newtype WafOverrideAction
  = WafOverrideAction { "Type" :: WafOverrideActionType }
```

<p>The action to take if any rule within the <code>RuleGroup</code> matches a request. </p>

##### Instances
``` purescript
Newtype WafOverrideAction _
Generic WafOverrideAction _
Show WafOverrideAction
Decode WafOverrideAction
Encode WafOverrideAction
```

#### `newWafOverrideAction`

``` purescript
newWafOverrideAction :: WafOverrideActionType -> WafOverrideAction
```

Constructs WafOverrideAction from required parameters

#### `newWafOverrideAction'`

``` purescript
newWafOverrideAction' :: WafOverrideActionType -> ({ "Type" :: WafOverrideActionType } -> { "Type" :: WafOverrideActionType }) -> WafOverrideAction
```

Constructs WafOverrideAction's fields from required parameters

#### `WafOverrideActionType`

``` purescript
newtype WafOverrideActionType
  = WafOverrideActionType String
```

##### Instances
``` purescript
Newtype WafOverrideActionType _
Generic WafOverrideActionType _
Show WafOverrideActionType
Decode WafOverrideActionType
Encode WafOverrideActionType
```

#### `WafRuleType`

``` purescript
newtype WafRuleType
  = WafRuleType String
```

##### Instances
``` purescript
Newtype WafRuleType _
Generic WafRuleType _
Show WafRuleType
Decode WafRuleType
Encode WafRuleType
```

#### `WebACL`

``` purescript
newtype WebACL
  = WebACL { "WebACLId" :: ResourceId, "Name" :: Maybe (ResourceName), "MetricName" :: Maybe (MetricName), "DefaultAction" :: WafAction, "Rules" :: ActivatedRules }
```

<p>Contains the <code>Rules</code> that identify the requests that you want to allow, block, or count. In a <code>WebACL</code>, you also specify a default action (<code>ALLOW</code> or <code>BLOCK</code>), and the action for each <code>Rule</code> that you add to a <code>WebACL</code>, for example, block requests from specified IP addresses or block requests from specified referrers. You also associate the <code>WebACL</code> with a CloudFront distribution to identify the requests that you want AWS WAF to filter. If you add more than one <code>Rule</code> to a <code>WebACL</code>, a request needs to match only one of the specifications to be allowed, blocked, or counted. For more information, see <a>UpdateWebACL</a>.</p>

##### Instances
``` purescript
Newtype WebACL _
Generic WebACL _
Show WebACL
Decode WebACL
Encode WebACL
```

#### `newWebACL`

``` purescript
newWebACL :: WafAction -> ActivatedRules -> ResourceId -> WebACL
```

Constructs WebACL from required parameters

#### `newWebACL'`

``` purescript
newWebACL' :: WafAction -> ActivatedRules -> ResourceId -> ({ "WebACLId" :: ResourceId, "Name" :: Maybe (ResourceName), "MetricName" :: Maybe (MetricName), "DefaultAction" :: WafAction, "Rules" :: ActivatedRules } -> { "WebACLId" :: ResourceId, "Name" :: Maybe (ResourceName), "MetricName" :: Maybe (MetricName), "DefaultAction" :: WafAction, "Rules" :: ActivatedRules }) -> WebACL
```

Constructs WebACL's fields from required parameters

#### `WebACLSummaries`

``` purescript
newtype WebACLSummaries
  = WebACLSummaries (Array WebACLSummary)
```

##### Instances
``` purescript
Newtype WebACLSummaries _
Generic WebACLSummaries _
Show WebACLSummaries
Decode WebACLSummaries
Encode WebACLSummaries
```

#### `WebACLSummary`

``` purescript
newtype WebACLSummary
  = WebACLSummary { "WebACLId" :: ResourceId, "Name" :: ResourceName }
```

<p>Contains the identifier and the name or description of the <a>WebACL</a>.</p>

##### Instances
``` purescript
Newtype WebACLSummary _
Generic WebACLSummary _
Show WebACLSummary
Decode WebACLSummary
Encode WebACLSummary
```

#### `newWebACLSummary`

``` purescript
newWebACLSummary :: ResourceName -> ResourceId -> WebACLSummary
```

Constructs WebACLSummary from required parameters

#### `newWebACLSummary'`

``` purescript
newWebACLSummary' :: ResourceName -> ResourceId -> ({ "WebACLId" :: ResourceId, "Name" :: ResourceName } -> { "WebACLId" :: ResourceId, "Name" :: ResourceName }) -> WebACLSummary
```

Constructs WebACLSummary's fields from required parameters

#### `WebACLUpdate`

``` purescript
newtype WebACLUpdate
  = WebACLUpdate { "Action" :: ChangeAction, "ActivatedRule" :: ActivatedRule }
```

<p>Specifies whether to insert a <code>Rule</code> into or delete a <code>Rule</code> from a <code>WebACL</code>.</p>

##### Instances
``` purescript
Newtype WebACLUpdate _
Generic WebACLUpdate _
Show WebACLUpdate
Decode WebACLUpdate
Encode WebACLUpdate
```

#### `newWebACLUpdate`

``` purescript
newWebACLUpdate :: ChangeAction -> ActivatedRule -> WebACLUpdate
```

Constructs WebACLUpdate from required parameters

#### `newWebACLUpdate'`

``` purescript
newWebACLUpdate' :: ChangeAction -> ActivatedRule -> ({ "Action" :: ChangeAction, "ActivatedRule" :: ActivatedRule } -> { "Action" :: ChangeAction, "ActivatedRule" :: ActivatedRule }) -> WebACLUpdate
```

Constructs WebACLUpdate's fields from required parameters

#### `WebACLUpdates`

``` purescript
newtype WebACLUpdates
  = WebACLUpdates (Array WebACLUpdate)
```

##### Instances
``` purescript
Newtype WebACLUpdates _
Generic WebACLUpdates _
Show WebACLUpdates
Decode WebACLUpdates
Encode WebACLUpdates
```

#### `XssMatchSet`

``` purescript
newtype XssMatchSet
  = XssMatchSet { "XssMatchSetId" :: ResourceId, "Name" :: Maybe (ResourceName), "XssMatchTuples" :: XssMatchTuples }
```

<p>A complex type that contains <code>XssMatchTuple</code> objects, which specify the parts of web requests that you want AWS WAF to inspect for cross-site scripting attacks and, if you want AWS WAF to inspect a header, the name of the header. If a <code>XssMatchSet</code> contains more than one <code>XssMatchTuple</code> object, a request needs to include cross-site scripting attacks in only one of the specified parts of the request to be considered a match.</p>

##### Instances
``` purescript
Newtype XssMatchSet _
Generic XssMatchSet _
Show XssMatchSet
Decode XssMatchSet
Encode XssMatchSet
```

#### `newXssMatchSet`

``` purescript
newXssMatchSet :: ResourceId -> XssMatchTuples -> XssMatchSet
```

Constructs XssMatchSet from required parameters

#### `newXssMatchSet'`

``` purescript
newXssMatchSet' :: ResourceId -> XssMatchTuples -> ({ "XssMatchSetId" :: ResourceId, "Name" :: Maybe (ResourceName), "XssMatchTuples" :: XssMatchTuples } -> { "XssMatchSetId" :: ResourceId, "Name" :: Maybe (ResourceName), "XssMatchTuples" :: XssMatchTuples }) -> XssMatchSet
```

Constructs XssMatchSet's fields from required parameters

#### `XssMatchSetSummaries`

``` purescript
newtype XssMatchSetSummaries
  = XssMatchSetSummaries (Array XssMatchSetSummary)
```

##### Instances
``` purescript
Newtype XssMatchSetSummaries _
Generic XssMatchSetSummaries _
Show XssMatchSetSummaries
Decode XssMatchSetSummaries
Encode XssMatchSetSummaries
```

#### `XssMatchSetSummary`

``` purescript
newtype XssMatchSetSummary
  = XssMatchSetSummary { "XssMatchSetId" :: ResourceId, "Name" :: ResourceName }
```

<p>The <code>Id</code> and <code>Name</code> of an <code>XssMatchSet</code>.</p>

##### Instances
``` purescript
Newtype XssMatchSetSummary _
Generic XssMatchSetSummary _
Show XssMatchSetSummary
Decode XssMatchSetSummary
Encode XssMatchSetSummary
```

#### `newXssMatchSetSummary`

``` purescript
newXssMatchSetSummary :: ResourceName -> ResourceId -> XssMatchSetSummary
```

Constructs XssMatchSetSummary from required parameters

#### `newXssMatchSetSummary'`

``` purescript
newXssMatchSetSummary' :: ResourceName -> ResourceId -> ({ "XssMatchSetId" :: ResourceId, "Name" :: ResourceName } -> { "XssMatchSetId" :: ResourceId, "Name" :: ResourceName }) -> XssMatchSetSummary
```

Constructs XssMatchSetSummary's fields from required parameters

#### `XssMatchSetUpdate`

``` purescript
newtype XssMatchSetUpdate
  = XssMatchSetUpdate { "Action" :: ChangeAction, "XssMatchTuple" :: XssMatchTuple }
```

<p>Specifies the part of a web request that you want to inspect for cross-site scripting attacks and indicates whether you want to add the specification to an <a>XssMatchSet</a> or delete it from an <code>XssMatchSet</code>.</p>

##### Instances
``` purescript
Newtype XssMatchSetUpdate _
Generic XssMatchSetUpdate _
Show XssMatchSetUpdate
Decode XssMatchSetUpdate
Encode XssMatchSetUpdate
```

#### `newXssMatchSetUpdate`

``` purescript
newXssMatchSetUpdate :: ChangeAction -> XssMatchTuple -> XssMatchSetUpdate
```

Constructs XssMatchSetUpdate from required parameters

#### `newXssMatchSetUpdate'`

``` purescript
newXssMatchSetUpdate' :: ChangeAction -> XssMatchTuple -> ({ "Action" :: ChangeAction, "XssMatchTuple" :: XssMatchTuple } -> { "Action" :: ChangeAction, "XssMatchTuple" :: XssMatchTuple }) -> XssMatchSetUpdate
```

Constructs XssMatchSetUpdate's fields from required parameters

#### `XssMatchSetUpdates`

``` purescript
newtype XssMatchSetUpdates
  = XssMatchSetUpdates (Array XssMatchSetUpdate)
```

##### Instances
``` purescript
Newtype XssMatchSetUpdates _
Generic XssMatchSetUpdates _
Show XssMatchSetUpdates
Decode XssMatchSetUpdates
Encode XssMatchSetUpdates
```

#### `XssMatchTuple`

``` purescript
newtype XssMatchTuple
  = XssMatchTuple { "FieldToMatch" :: FieldToMatch, "TextTransformation" :: TextTransformation }
```

<p>Specifies the part of a web request that you want AWS WAF to inspect for cross-site scripting attacks and, if you want AWS WAF to inspect a header, the name of the header.</p>

##### Instances
``` purescript
Newtype XssMatchTuple _
Generic XssMatchTuple _
Show XssMatchTuple
Decode XssMatchTuple
Encode XssMatchTuple
```

#### `newXssMatchTuple`

``` purescript
newXssMatchTuple :: FieldToMatch -> TextTransformation -> XssMatchTuple
```

Constructs XssMatchTuple from required parameters

#### `newXssMatchTuple'`

``` purescript
newXssMatchTuple' :: FieldToMatch -> TextTransformation -> ({ "FieldToMatch" :: FieldToMatch, "TextTransformation" :: TextTransformation } -> { "FieldToMatch" :: FieldToMatch, "TextTransformation" :: TextTransformation }) -> XssMatchTuple
```

Constructs XssMatchTuple's fields from required parameters

#### `XssMatchTuples`

``` purescript
newtype XssMatchTuples
  = XssMatchTuples (Array XssMatchTuple)
```

##### Instances
``` purescript
Newtype XssMatchTuples _
Generic XssMatchTuples _
Show XssMatchTuples
Decode XssMatchTuples
Encode XssMatchTuples
```

#### `ErrorMessage'`

``` purescript
newtype ErrorMessage'
  = ErrorMessage' String
```

##### Instances
``` purescript
Newtype ErrorMessage' _
Generic ErrorMessage' _
Show ErrorMessage'
Decode ErrorMessage'
Encode ErrorMessage'
```


