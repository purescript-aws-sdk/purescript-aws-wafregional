
module AWS.WAFRegional.Types where

import Prelude
import Data.Foreign.Class (class Decode, class Encode)
import Data.Foreign.Generic (defaultOptions, genericDecode, genericEncode)
import Data.Foreign.Generic.Types (Options)
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)
import Data.Maybe (Maybe(..))
import Data.Newtype (class Newtype)
import Data.StrMap (StrMap) as StrMap

import AWS.Request.Types as Types

options :: Options
options = defaultOptions { unwrapSingleConstructors = true }


newtype Action = Action String
derive instance newtypeAction :: Newtype Action _
derive instance repGenericAction :: Generic Action _
instance showAction :: Show Action where show = genericShow
instance decodeAction :: Decode Action where decode = genericDecode options
instance encodeAction :: Encode Action where encode = genericEncode options



-- | <p>The <code>ActivatedRule</code> object in an <a>UpdateWebACL</a> request specifies a <code>Rule</code> that you want to insert or delete, the priority of the <code>Rule</code> in the <code>WebACL</code>, and the action that you want AWS WAF to take when a web request matches the <code>Rule</code> (<code>ALLOW</code>, <code>BLOCK</code>, or <code>COUNT</code>).</p> <p>To specify whether to insert or delete a <code>Rule</code>, use the <code>Action</code> parameter in the <a>WebACLUpdate</a> data type.</p>
newtype ActivatedRule = ActivatedRule 
  { "Priority" :: (RulePriority)
  , "RuleId" :: (ResourceId)
  , "Action" :: Maybe (WafAction)
  , "OverrideAction" :: Maybe (WafOverrideAction)
  , "Type" :: Maybe (WafRuleType)
  }
derive instance newtypeActivatedRule :: Newtype ActivatedRule _
derive instance repGenericActivatedRule :: Generic ActivatedRule _
instance showActivatedRule :: Show ActivatedRule where show = genericShow
instance decodeActivatedRule :: Decode ActivatedRule where decode = genericDecode options
instance encodeActivatedRule :: Encode ActivatedRule where encode = genericEncode options

-- | Constructs ActivatedRule from required parameters
newActivatedRule :: RulePriority -> ResourceId -> ActivatedRule
newActivatedRule _Priority _RuleId = ActivatedRule { "Priority": _Priority, "RuleId": _RuleId, "Action": Nothing, "OverrideAction": Nothing, "Type": Nothing }

-- | Constructs ActivatedRule's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newActivatedRule' :: RulePriority -> ResourceId -> ( { "Priority" :: (RulePriority) , "RuleId" :: (ResourceId) , "Action" :: Maybe (WafAction) , "OverrideAction" :: Maybe (WafOverrideAction) , "Type" :: Maybe (WafRuleType) } -> {"Priority" :: (RulePriority) , "RuleId" :: (ResourceId) , "Action" :: Maybe (WafAction) , "OverrideAction" :: Maybe (WafOverrideAction) , "Type" :: Maybe (WafRuleType) } ) -> ActivatedRule
newActivatedRule' _Priority _RuleId customize = (ActivatedRule <<< customize) { "Priority": _Priority, "RuleId": _RuleId, "Action": Nothing, "OverrideAction": Nothing, "Type": Nothing }



newtype ActivatedRules = ActivatedRules (Array ActivatedRule)
derive instance newtypeActivatedRules :: Newtype ActivatedRules _
derive instance repGenericActivatedRules :: Generic ActivatedRules _
instance showActivatedRules :: Show ActivatedRules where show = genericShow
instance decodeActivatedRules :: Decode ActivatedRules where decode = genericDecode options
instance encodeActivatedRules :: Encode ActivatedRules where encode = genericEncode options



newtype AssociateWebACLRequest = AssociateWebACLRequest 
  { "WebACLId" :: (ResourceId)
  , "ResourceArn" :: (ResourceArn)
  }
derive instance newtypeAssociateWebACLRequest :: Newtype AssociateWebACLRequest _
derive instance repGenericAssociateWebACLRequest :: Generic AssociateWebACLRequest _
instance showAssociateWebACLRequest :: Show AssociateWebACLRequest where show = genericShow
instance decodeAssociateWebACLRequest :: Decode AssociateWebACLRequest where decode = genericDecode options
instance encodeAssociateWebACLRequest :: Encode AssociateWebACLRequest where encode = genericEncode options

-- | Constructs AssociateWebACLRequest from required parameters
newAssociateWebACLRequest :: ResourceArn -> ResourceId -> AssociateWebACLRequest
newAssociateWebACLRequest _ResourceArn _WebACLId = AssociateWebACLRequest { "ResourceArn": _ResourceArn, "WebACLId": _WebACLId }

-- | Constructs AssociateWebACLRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAssociateWebACLRequest' :: ResourceArn -> ResourceId -> ( { "WebACLId" :: (ResourceId) , "ResourceArn" :: (ResourceArn) } -> {"WebACLId" :: (ResourceId) , "ResourceArn" :: (ResourceArn) } ) -> AssociateWebACLRequest
newAssociateWebACLRequest' _ResourceArn _WebACLId customize = (AssociateWebACLRequest <<< customize) { "ResourceArn": _ResourceArn, "WebACLId": _WebACLId }



newtype AssociateWebACLResponse = AssociateWebACLResponse Types.NoArguments
derive instance newtypeAssociateWebACLResponse :: Newtype AssociateWebACLResponse _
derive instance repGenericAssociateWebACLResponse :: Generic AssociateWebACLResponse _
instance showAssociateWebACLResponse :: Show AssociateWebACLResponse where show = genericShow
instance decodeAssociateWebACLResponse :: Decode AssociateWebACLResponse where decode = genericDecode options
instance encodeAssociateWebACLResponse :: Encode AssociateWebACLResponse where encode = genericEncode options



-- | <p>In a <a>GetByteMatchSet</a> request, <code>ByteMatchSet</code> is a complex type that contains the <code>ByteMatchSetId</code> and <code>Name</code> of a <code>ByteMatchSet</code>, and the values that you specified when you updated the <code>ByteMatchSet</code>. </p> <p>A complex type that contains <code>ByteMatchTuple</code> objects, which specify the parts of web requests that you want AWS WAF to inspect and the values that you want AWS WAF to search for. If a <code>ByteMatchSet</code> contains more than one <code>ByteMatchTuple</code> object, a request needs to match the settings in only one <code>ByteMatchTuple</code> to be considered a match.</p>
newtype ByteMatchSet = ByteMatchSet 
  { "ByteMatchSetId" :: (ResourceId)
  , "Name" :: Maybe (ResourceName)
  , "ByteMatchTuples" :: (ByteMatchTuples)
  }
derive instance newtypeByteMatchSet :: Newtype ByteMatchSet _
derive instance repGenericByteMatchSet :: Generic ByteMatchSet _
instance showByteMatchSet :: Show ByteMatchSet where show = genericShow
instance decodeByteMatchSet :: Decode ByteMatchSet where decode = genericDecode options
instance encodeByteMatchSet :: Encode ByteMatchSet where encode = genericEncode options

-- | Constructs ByteMatchSet from required parameters
newByteMatchSet :: ResourceId -> ByteMatchTuples -> ByteMatchSet
newByteMatchSet _ByteMatchSetId _ByteMatchTuples = ByteMatchSet { "ByteMatchSetId": _ByteMatchSetId, "ByteMatchTuples": _ByteMatchTuples, "Name": Nothing }

-- | Constructs ByteMatchSet's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newByteMatchSet' :: ResourceId -> ByteMatchTuples -> ( { "ByteMatchSetId" :: (ResourceId) , "Name" :: Maybe (ResourceName) , "ByteMatchTuples" :: (ByteMatchTuples) } -> {"ByteMatchSetId" :: (ResourceId) , "Name" :: Maybe (ResourceName) , "ByteMatchTuples" :: (ByteMatchTuples) } ) -> ByteMatchSet
newByteMatchSet' _ByteMatchSetId _ByteMatchTuples customize = (ByteMatchSet <<< customize) { "ByteMatchSetId": _ByteMatchSetId, "ByteMatchTuples": _ByteMatchTuples, "Name": Nothing }



newtype ByteMatchSetSummaries = ByteMatchSetSummaries (Array ByteMatchSetSummary)
derive instance newtypeByteMatchSetSummaries :: Newtype ByteMatchSetSummaries _
derive instance repGenericByteMatchSetSummaries :: Generic ByteMatchSetSummaries _
instance showByteMatchSetSummaries :: Show ByteMatchSetSummaries where show = genericShow
instance decodeByteMatchSetSummaries :: Decode ByteMatchSetSummaries where decode = genericDecode options
instance encodeByteMatchSetSummaries :: Encode ByteMatchSetSummaries where encode = genericEncode options



-- | <p>Returned by <a>ListByteMatchSets</a>. Each <code>ByteMatchSetSummary</code> object includes the <code>Name</code> and <code>ByteMatchSetId</code> for one <a>ByteMatchSet</a>.</p>
newtype ByteMatchSetSummary = ByteMatchSetSummary 
  { "ByteMatchSetId" :: (ResourceId)
  , "Name" :: (ResourceName)
  }
derive instance newtypeByteMatchSetSummary :: Newtype ByteMatchSetSummary _
derive instance repGenericByteMatchSetSummary :: Generic ByteMatchSetSummary _
instance showByteMatchSetSummary :: Show ByteMatchSetSummary where show = genericShow
instance decodeByteMatchSetSummary :: Decode ByteMatchSetSummary where decode = genericDecode options
instance encodeByteMatchSetSummary :: Encode ByteMatchSetSummary where encode = genericEncode options

-- | Constructs ByteMatchSetSummary from required parameters
newByteMatchSetSummary :: ResourceId -> ResourceName -> ByteMatchSetSummary
newByteMatchSetSummary _ByteMatchSetId _Name = ByteMatchSetSummary { "ByteMatchSetId": _ByteMatchSetId, "Name": _Name }

-- | Constructs ByteMatchSetSummary's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newByteMatchSetSummary' :: ResourceId -> ResourceName -> ( { "ByteMatchSetId" :: (ResourceId) , "Name" :: (ResourceName) } -> {"ByteMatchSetId" :: (ResourceId) , "Name" :: (ResourceName) } ) -> ByteMatchSetSummary
newByteMatchSetSummary' _ByteMatchSetId _Name customize = (ByteMatchSetSummary <<< customize) { "ByteMatchSetId": _ByteMatchSetId, "Name": _Name }



-- | <p>In an <a>UpdateByteMatchSet</a> request, <code>ByteMatchSetUpdate</code> specifies whether to insert or delete a <a>ByteMatchTuple</a> and includes the settings for the <code>ByteMatchTuple</code>.</p>
newtype ByteMatchSetUpdate = ByteMatchSetUpdate 
  { "Action" :: (ChangeAction)
  , "ByteMatchTuple" :: (ByteMatchTuple)
  }
derive instance newtypeByteMatchSetUpdate :: Newtype ByteMatchSetUpdate _
derive instance repGenericByteMatchSetUpdate :: Generic ByteMatchSetUpdate _
instance showByteMatchSetUpdate :: Show ByteMatchSetUpdate where show = genericShow
instance decodeByteMatchSetUpdate :: Decode ByteMatchSetUpdate where decode = genericDecode options
instance encodeByteMatchSetUpdate :: Encode ByteMatchSetUpdate where encode = genericEncode options

-- | Constructs ByteMatchSetUpdate from required parameters
newByteMatchSetUpdate :: ChangeAction -> ByteMatchTuple -> ByteMatchSetUpdate
newByteMatchSetUpdate _Action _ByteMatchTuple = ByteMatchSetUpdate { "Action": _Action, "ByteMatchTuple": _ByteMatchTuple }

-- | Constructs ByteMatchSetUpdate's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newByteMatchSetUpdate' :: ChangeAction -> ByteMatchTuple -> ( { "Action" :: (ChangeAction) , "ByteMatchTuple" :: (ByteMatchTuple) } -> {"Action" :: (ChangeAction) , "ByteMatchTuple" :: (ByteMatchTuple) } ) -> ByteMatchSetUpdate
newByteMatchSetUpdate' _Action _ByteMatchTuple customize = (ByteMatchSetUpdate <<< customize) { "Action": _Action, "ByteMatchTuple": _ByteMatchTuple }



newtype ByteMatchSetUpdates = ByteMatchSetUpdates (Array ByteMatchSetUpdate)
derive instance newtypeByteMatchSetUpdates :: Newtype ByteMatchSetUpdates _
derive instance repGenericByteMatchSetUpdates :: Generic ByteMatchSetUpdates _
instance showByteMatchSetUpdates :: Show ByteMatchSetUpdates where show = genericShow
instance decodeByteMatchSetUpdates :: Decode ByteMatchSetUpdates where decode = genericDecode options
instance encodeByteMatchSetUpdates :: Encode ByteMatchSetUpdates where encode = genericEncode options



newtype ByteMatchTargetString = ByteMatchTargetString String
derive instance newtypeByteMatchTargetString :: Newtype ByteMatchTargetString _
derive instance repGenericByteMatchTargetString :: Generic ByteMatchTargetString _
instance showByteMatchTargetString :: Show ByteMatchTargetString where show = genericShow
instance decodeByteMatchTargetString :: Decode ByteMatchTargetString where decode = genericDecode options
instance encodeByteMatchTargetString :: Encode ByteMatchTargetString where encode = genericEncode options



-- | <p>The bytes (typically a string that corresponds with ASCII characters) that you want AWS WAF to search for in web requests, the location in requests that you want AWS WAF to search, and other settings.</p>
newtype ByteMatchTuple = ByteMatchTuple 
  { "FieldToMatch" :: (FieldToMatch)
  , "TargetString" :: (ByteMatchTargetString)
  , "TextTransformation" :: (TextTransformation)
  , "PositionalConstraint" :: (PositionalConstraint)
  }
derive instance newtypeByteMatchTuple :: Newtype ByteMatchTuple _
derive instance repGenericByteMatchTuple :: Generic ByteMatchTuple _
instance showByteMatchTuple :: Show ByteMatchTuple where show = genericShow
instance decodeByteMatchTuple :: Decode ByteMatchTuple where decode = genericDecode options
instance encodeByteMatchTuple :: Encode ByteMatchTuple where encode = genericEncode options

-- | Constructs ByteMatchTuple from required parameters
newByteMatchTuple :: FieldToMatch -> PositionalConstraint -> ByteMatchTargetString -> TextTransformation -> ByteMatchTuple
newByteMatchTuple _FieldToMatch _PositionalConstraint _TargetString _TextTransformation = ByteMatchTuple { "FieldToMatch": _FieldToMatch, "PositionalConstraint": _PositionalConstraint, "TargetString": _TargetString, "TextTransformation": _TextTransformation }

-- | Constructs ByteMatchTuple's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newByteMatchTuple' :: FieldToMatch -> PositionalConstraint -> ByteMatchTargetString -> TextTransformation -> ( { "FieldToMatch" :: (FieldToMatch) , "TargetString" :: (ByteMatchTargetString) , "TextTransformation" :: (TextTransformation) , "PositionalConstraint" :: (PositionalConstraint) } -> {"FieldToMatch" :: (FieldToMatch) , "TargetString" :: (ByteMatchTargetString) , "TextTransformation" :: (TextTransformation) , "PositionalConstraint" :: (PositionalConstraint) } ) -> ByteMatchTuple
newByteMatchTuple' _FieldToMatch _PositionalConstraint _TargetString _TextTransformation customize = (ByteMatchTuple <<< customize) { "FieldToMatch": _FieldToMatch, "PositionalConstraint": _PositionalConstraint, "TargetString": _TargetString, "TextTransformation": _TextTransformation }



newtype ByteMatchTuples = ByteMatchTuples (Array ByteMatchTuple)
derive instance newtypeByteMatchTuples :: Newtype ByteMatchTuples _
derive instance repGenericByteMatchTuples :: Generic ByteMatchTuples _
instance showByteMatchTuples :: Show ByteMatchTuples where show = genericShow
instance decodeByteMatchTuples :: Decode ByteMatchTuples where decode = genericDecode options
instance encodeByteMatchTuples :: Encode ByteMatchTuples where encode = genericEncode options



newtype ChangeAction = ChangeAction String
derive instance newtypeChangeAction :: Newtype ChangeAction _
derive instance repGenericChangeAction :: Generic ChangeAction _
instance showChangeAction :: Show ChangeAction where show = genericShow
instance decodeChangeAction :: Decode ChangeAction where decode = genericDecode options
instance encodeChangeAction :: Encode ChangeAction where encode = genericEncode options



newtype ChangeToken = ChangeToken String
derive instance newtypeChangeToken :: Newtype ChangeToken _
derive instance repGenericChangeToken :: Generic ChangeToken _
instance showChangeToken :: Show ChangeToken where show = genericShow
instance decodeChangeToken :: Decode ChangeToken where decode = genericDecode options
instance encodeChangeToken :: Encode ChangeToken where encode = genericEncode options



newtype ChangeTokenStatus = ChangeTokenStatus String
derive instance newtypeChangeTokenStatus :: Newtype ChangeTokenStatus _
derive instance repGenericChangeTokenStatus :: Generic ChangeTokenStatus _
instance showChangeTokenStatus :: Show ChangeTokenStatus where show = genericShow
instance decodeChangeTokenStatus :: Decode ChangeTokenStatus where decode = genericDecode options
instance encodeChangeTokenStatus :: Encode ChangeTokenStatus where encode = genericEncode options



newtype ComparisonOperator = ComparisonOperator String
derive instance newtypeComparisonOperator :: Newtype ComparisonOperator _
derive instance repGenericComparisonOperator :: Generic ComparisonOperator _
instance showComparisonOperator :: Show ComparisonOperator where show = genericShow
instance decodeComparisonOperator :: Decode ComparisonOperator where decode = genericDecode options
instance encodeComparisonOperator :: Encode ComparisonOperator where encode = genericEncode options



newtype Country = Country String
derive instance newtypeCountry :: Newtype Country _
derive instance repGenericCountry :: Generic Country _
instance showCountry :: Show Country where show = genericShow
instance decodeCountry :: Decode Country where decode = genericDecode options
instance encodeCountry :: Encode Country where encode = genericEncode options



newtype CreateByteMatchSetRequest = CreateByteMatchSetRequest 
  { "Name" :: (ResourceName)
  , "ChangeToken" :: (ChangeToken)
  }
derive instance newtypeCreateByteMatchSetRequest :: Newtype CreateByteMatchSetRequest _
derive instance repGenericCreateByteMatchSetRequest :: Generic CreateByteMatchSetRequest _
instance showCreateByteMatchSetRequest :: Show CreateByteMatchSetRequest where show = genericShow
instance decodeCreateByteMatchSetRequest :: Decode CreateByteMatchSetRequest where decode = genericDecode options
instance encodeCreateByteMatchSetRequest :: Encode CreateByteMatchSetRequest where encode = genericEncode options

-- | Constructs CreateByteMatchSetRequest from required parameters
newCreateByteMatchSetRequest :: ChangeToken -> ResourceName -> CreateByteMatchSetRequest
newCreateByteMatchSetRequest _ChangeToken _Name = CreateByteMatchSetRequest { "ChangeToken": _ChangeToken, "Name": _Name }

-- | Constructs CreateByteMatchSetRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateByteMatchSetRequest' :: ChangeToken -> ResourceName -> ( { "Name" :: (ResourceName) , "ChangeToken" :: (ChangeToken) } -> {"Name" :: (ResourceName) , "ChangeToken" :: (ChangeToken) } ) -> CreateByteMatchSetRequest
newCreateByteMatchSetRequest' _ChangeToken _Name customize = (CreateByteMatchSetRequest <<< customize) { "ChangeToken": _ChangeToken, "Name": _Name }



newtype CreateByteMatchSetResponse = CreateByteMatchSetResponse 
  { "ByteMatchSet" :: Maybe (ByteMatchSet)
  , "ChangeToken" :: Maybe (ChangeToken)
  }
derive instance newtypeCreateByteMatchSetResponse :: Newtype CreateByteMatchSetResponse _
derive instance repGenericCreateByteMatchSetResponse :: Generic CreateByteMatchSetResponse _
instance showCreateByteMatchSetResponse :: Show CreateByteMatchSetResponse where show = genericShow
instance decodeCreateByteMatchSetResponse :: Decode CreateByteMatchSetResponse where decode = genericDecode options
instance encodeCreateByteMatchSetResponse :: Encode CreateByteMatchSetResponse where encode = genericEncode options

-- | Constructs CreateByteMatchSetResponse from required parameters
newCreateByteMatchSetResponse :: CreateByteMatchSetResponse
newCreateByteMatchSetResponse  = CreateByteMatchSetResponse { "ByteMatchSet": Nothing, "ChangeToken": Nothing }

-- | Constructs CreateByteMatchSetResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateByteMatchSetResponse' :: ( { "ByteMatchSet" :: Maybe (ByteMatchSet) , "ChangeToken" :: Maybe (ChangeToken) } -> {"ByteMatchSet" :: Maybe (ByteMatchSet) , "ChangeToken" :: Maybe (ChangeToken) } ) -> CreateByteMatchSetResponse
newCreateByteMatchSetResponse'  customize = (CreateByteMatchSetResponse <<< customize) { "ByteMatchSet": Nothing, "ChangeToken": Nothing }



newtype CreateGeoMatchSetRequest = CreateGeoMatchSetRequest 
  { "Name" :: (ResourceName)
  , "ChangeToken" :: (ChangeToken)
  }
derive instance newtypeCreateGeoMatchSetRequest :: Newtype CreateGeoMatchSetRequest _
derive instance repGenericCreateGeoMatchSetRequest :: Generic CreateGeoMatchSetRequest _
instance showCreateGeoMatchSetRequest :: Show CreateGeoMatchSetRequest where show = genericShow
instance decodeCreateGeoMatchSetRequest :: Decode CreateGeoMatchSetRequest where decode = genericDecode options
instance encodeCreateGeoMatchSetRequest :: Encode CreateGeoMatchSetRequest where encode = genericEncode options

-- | Constructs CreateGeoMatchSetRequest from required parameters
newCreateGeoMatchSetRequest :: ChangeToken -> ResourceName -> CreateGeoMatchSetRequest
newCreateGeoMatchSetRequest _ChangeToken _Name = CreateGeoMatchSetRequest { "ChangeToken": _ChangeToken, "Name": _Name }

-- | Constructs CreateGeoMatchSetRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateGeoMatchSetRequest' :: ChangeToken -> ResourceName -> ( { "Name" :: (ResourceName) , "ChangeToken" :: (ChangeToken) } -> {"Name" :: (ResourceName) , "ChangeToken" :: (ChangeToken) } ) -> CreateGeoMatchSetRequest
newCreateGeoMatchSetRequest' _ChangeToken _Name customize = (CreateGeoMatchSetRequest <<< customize) { "ChangeToken": _ChangeToken, "Name": _Name }



newtype CreateGeoMatchSetResponse = CreateGeoMatchSetResponse 
  { "GeoMatchSet" :: Maybe (GeoMatchSet)
  , "ChangeToken" :: Maybe (ChangeToken)
  }
derive instance newtypeCreateGeoMatchSetResponse :: Newtype CreateGeoMatchSetResponse _
derive instance repGenericCreateGeoMatchSetResponse :: Generic CreateGeoMatchSetResponse _
instance showCreateGeoMatchSetResponse :: Show CreateGeoMatchSetResponse where show = genericShow
instance decodeCreateGeoMatchSetResponse :: Decode CreateGeoMatchSetResponse where decode = genericDecode options
instance encodeCreateGeoMatchSetResponse :: Encode CreateGeoMatchSetResponse where encode = genericEncode options

-- | Constructs CreateGeoMatchSetResponse from required parameters
newCreateGeoMatchSetResponse :: CreateGeoMatchSetResponse
newCreateGeoMatchSetResponse  = CreateGeoMatchSetResponse { "ChangeToken": Nothing, "GeoMatchSet": Nothing }

-- | Constructs CreateGeoMatchSetResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateGeoMatchSetResponse' :: ( { "GeoMatchSet" :: Maybe (GeoMatchSet) , "ChangeToken" :: Maybe (ChangeToken) } -> {"GeoMatchSet" :: Maybe (GeoMatchSet) , "ChangeToken" :: Maybe (ChangeToken) } ) -> CreateGeoMatchSetResponse
newCreateGeoMatchSetResponse'  customize = (CreateGeoMatchSetResponse <<< customize) { "ChangeToken": Nothing, "GeoMatchSet": Nothing }



newtype CreateIPSetRequest = CreateIPSetRequest 
  { "Name" :: (ResourceName)
  , "ChangeToken" :: (ChangeToken)
  }
derive instance newtypeCreateIPSetRequest :: Newtype CreateIPSetRequest _
derive instance repGenericCreateIPSetRequest :: Generic CreateIPSetRequest _
instance showCreateIPSetRequest :: Show CreateIPSetRequest where show = genericShow
instance decodeCreateIPSetRequest :: Decode CreateIPSetRequest where decode = genericDecode options
instance encodeCreateIPSetRequest :: Encode CreateIPSetRequest where encode = genericEncode options

-- | Constructs CreateIPSetRequest from required parameters
newCreateIPSetRequest :: ChangeToken -> ResourceName -> CreateIPSetRequest
newCreateIPSetRequest _ChangeToken _Name = CreateIPSetRequest { "ChangeToken": _ChangeToken, "Name": _Name }

-- | Constructs CreateIPSetRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateIPSetRequest' :: ChangeToken -> ResourceName -> ( { "Name" :: (ResourceName) , "ChangeToken" :: (ChangeToken) } -> {"Name" :: (ResourceName) , "ChangeToken" :: (ChangeToken) } ) -> CreateIPSetRequest
newCreateIPSetRequest' _ChangeToken _Name customize = (CreateIPSetRequest <<< customize) { "ChangeToken": _ChangeToken, "Name": _Name }



newtype CreateIPSetResponse = CreateIPSetResponse 
  { "IPSet" :: Maybe (IPSet)
  , "ChangeToken" :: Maybe (ChangeToken)
  }
derive instance newtypeCreateIPSetResponse :: Newtype CreateIPSetResponse _
derive instance repGenericCreateIPSetResponse :: Generic CreateIPSetResponse _
instance showCreateIPSetResponse :: Show CreateIPSetResponse where show = genericShow
instance decodeCreateIPSetResponse :: Decode CreateIPSetResponse where decode = genericDecode options
instance encodeCreateIPSetResponse :: Encode CreateIPSetResponse where encode = genericEncode options

-- | Constructs CreateIPSetResponse from required parameters
newCreateIPSetResponse :: CreateIPSetResponse
newCreateIPSetResponse  = CreateIPSetResponse { "ChangeToken": Nothing, "IPSet": Nothing }

-- | Constructs CreateIPSetResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateIPSetResponse' :: ( { "IPSet" :: Maybe (IPSet) , "ChangeToken" :: Maybe (ChangeToken) } -> {"IPSet" :: Maybe (IPSet) , "ChangeToken" :: Maybe (ChangeToken) } ) -> CreateIPSetResponse
newCreateIPSetResponse'  customize = (CreateIPSetResponse <<< customize) { "ChangeToken": Nothing, "IPSet": Nothing }



newtype CreateRateBasedRuleRequest = CreateRateBasedRuleRequest 
  { "Name" :: (ResourceName)
  , "MetricName" :: (MetricName)
  , "RateKey" :: (RateKey)
  , "RateLimit" :: (RateLimit)
  , "ChangeToken" :: (ChangeToken)
  }
derive instance newtypeCreateRateBasedRuleRequest :: Newtype CreateRateBasedRuleRequest _
derive instance repGenericCreateRateBasedRuleRequest :: Generic CreateRateBasedRuleRequest _
instance showCreateRateBasedRuleRequest :: Show CreateRateBasedRuleRequest where show = genericShow
instance decodeCreateRateBasedRuleRequest :: Decode CreateRateBasedRuleRequest where decode = genericDecode options
instance encodeCreateRateBasedRuleRequest :: Encode CreateRateBasedRuleRequest where encode = genericEncode options

-- | Constructs CreateRateBasedRuleRequest from required parameters
newCreateRateBasedRuleRequest :: ChangeToken -> MetricName -> ResourceName -> RateKey -> RateLimit -> CreateRateBasedRuleRequest
newCreateRateBasedRuleRequest _ChangeToken _MetricName _Name _RateKey _RateLimit = CreateRateBasedRuleRequest { "ChangeToken": _ChangeToken, "MetricName": _MetricName, "Name": _Name, "RateKey": _RateKey, "RateLimit": _RateLimit }

-- | Constructs CreateRateBasedRuleRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateRateBasedRuleRequest' :: ChangeToken -> MetricName -> ResourceName -> RateKey -> RateLimit -> ( { "Name" :: (ResourceName) , "MetricName" :: (MetricName) , "RateKey" :: (RateKey) , "RateLimit" :: (RateLimit) , "ChangeToken" :: (ChangeToken) } -> {"Name" :: (ResourceName) , "MetricName" :: (MetricName) , "RateKey" :: (RateKey) , "RateLimit" :: (RateLimit) , "ChangeToken" :: (ChangeToken) } ) -> CreateRateBasedRuleRequest
newCreateRateBasedRuleRequest' _ChangeToken _MetricName _Name _RateKey _RateLimit customize = (CreateRateBasedRuleRequest <<< customize) { "ChangeToken": _ChangeToken, "MetricName": _MetricName, "Name": _Name, "RateKey": _RateKey, "RateLimit": _RateLimit }



newtype CreateRateBasedRuleResponse = CreateRateBasedRuleResponse 
  { "Rule" :: Maybe (RateBasedRule)
  , "ChangeToken" :: Maybe (ChangeToken)
  }
derive instance newtypeCreateRateBasedRuleResponse :: Newtype CreateRateBasedRuleResponse _
derive instance repGenericCreateRateBasedRuleResponse :: Generic CreateRateBasedRuleResponse _
instance showCreateRateBasedRuleResponse :: Show CreateRateBasedRuleResponse where show = genericShow
instance decodeCreateRateBasedRuleResponse :: Decode CreateRateBasedRuleResponse where decode = genericDecode options
instance encodeCreateRateBasedRuleResponse :: Encode CreateRateBasedRuleResponse where encode = genericEncode options

-- | Constructs CreateRateBasedRuleResponse from required parameters
newCreateRateBasedRuleResponse :: CreateRateBasedRuleResponse
newCreateRateBasedRuleResponse  = CreateRateBasedRuleResponse { "ChangeToken": Nothing, "Rule": Nothing }

-- | Constructs CreateRateBasedRuleResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateRateBasedRuleResponse' :: ( { "Rule" :: Maybe (RateBasedRule) , "ChangeToken" :: Maybe (ChangeToken) } -> {"Rule" :: Maybe (RateBasedRule) , "ChangeToken" :: Maybe (ChangeToken) } ) -> CreateRateBasedRuleResponse
newCreateRateBasedRuleResponse'  customize = (CreateRateBasedRuleResponse <<< customize) { "ChangeToken": Nothing, "Rule": Nothing }



newtype CreateRegexMatchSetRequest = CreateRegexMatchSetRequest 
  { "Name" :: (ResourceName)
  , "ChangeToken" :: (ChangeToken)
  }
derive instance newtypeCreateRegexMatchSetRequest :: Newtype CreateRegexMatchSetRequest _
derive instance repGenericCreateRegexMatchSetRequest :: Generic CreateRegexMatchSetRequest _
instance showCreateRegexMatchSetRequest :: Show CreateRegexMatchSetRequest where show = genericShow
instance decodeCreateRegexMatchSetRequest :: Decode CreateRegexMatchSetRequest where decode = genericDecode options
instance encodeCreateRegexMatchSetRequest :: Encode CreateRegexMatchSetRequest where encode = genericEncode options

-- | Constructs CreateRegexMatchSetRequest from required parameters
newCreateRegexMatchSetRequest :: ChangeToken -> ResourceName -> CreateRegexMatchSetRequest
newCreateRegexMatchSetRequest _ChangeToken _Name = CreateRegexMatchSetRequest { "ChangeToken": _ChangeToken, "Name": _Name }

-- | Constructs CreateRegexMatchSetRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateRegexMatchSetRequest' :: ChangeToken -> ResourceName -> ( { "Name" :: (ResourceName) , "ChangeToken" :: (ChangeToken) } -> {"Name" :: (ResourceName) , "ChangeToken" :: (ChangeToken) } ) -> CreateRegexMatchSetRequest
newCreateRegexMatchSetRequest' _ChangeToken _Name customize = (CreateRegexMatchSetRequest <<< customize) { "ChangeToken": _ChangeToken, "Name": _Name }



newtype CreateRegexMatchSetResponse = CreateRegexMatchSetResponse 
  { "RegexMatchSet" :: Maybe (RegexMatchSet)
  , "ChangeToken" :: Maybe (ChangeToken)
  }
derive instance newtypeCreateRegexMatchSetResponse :: Newtype CreateRegexMatchSetResponse _
derive instance repGenericCreateRegexMatchSetResponse :: Generic CreateRegexMatchSetResponse _
instance showCreateRegexMatchSetResponse :: Show CreateRegexMatchSetResponse where show = genericShow
instance decodeCreateRegexMatchSetResponse :: Decode CreateRegexMatchSetResponse where decode = genericDecode options
instance encodeCreateRegexMatchSetResponse :: Encode CreateRegexMatchSetResponse where encode = genericEncode options

-- | Constructs CreateRegexMatchSetResponse from required parameters
newCreateRegexMatchSetResponse :: CreateRegexMatchSetResponse
newCreateRegexMatchSetResponse  = CreateRegexMatchSetResponse { "ChangeToken": Nothing, "RegexMatchSet": Nothing }

-- | Constructs CreateRegexMatchSetResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateRegexMatchSetResponse' :: ( { "RegexMatchSet" :: Maybe (RegexMatchSet) , "ChangeToken" :: Maybe (ChangeToken) } -> {"RegexMatchSet" :: Maybe (RegexMatchSet) , "ChangeToken" :: Maybe (ChangeToken) } ) -> CreateRegexMatchSetResponse
newCreateRegexMatchSetResponse'  customize = (CreateRegexMatchSetResponse <<< customize) { "ChangeToken": Nothing, "RegexMatchSet": Nothing }



newtype CreateRegexPatternSetRequest = CreateRegexPatternSetRequest 
  { "Name" :: (ResourceName)
  , "ChangeToken" :: (ChangeToken)
  }
derive instance newtypeCreateRegexPatternSetRequest :: Newtype CreateRegexPatternSetRequest _
derive instance repGenericCreateRegexPatternSetRequest :: Generic CreateRegexPatternSetRequest _
instance showCreateRegexPatternSetRequest :: Show CreateRegexPatternSetRequest where show = genericShow
instance decodeCreateRegexPatternSetRequest :: Decode CreateRegexPatternSetRequest where decode = genericDecode options
instance encodeCreateRegexPatternSetRequest :: Encode CreateRegexPatternSetRequest where encode = genericEncode options

-- | Constructs CreateRegexPatternSetRequest from required parameters
newCreateRegexPatternSetRequest :: ChangeToken -> ResourceName -> CreateRegexPatternSetRequest
newCreateRegexPatternSetRequest _ChangeToken _Name = CreateRegexPatternSetRequest { "ChangeToken": _ChangeToken, "Name": _Name }

-- | Constructs CreateRegexPatternSetRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateRegexPatternSetRequest' :: ChangeToken -> ResourceName -> ( { "Name" :: (ResourceName) , "ChangeToken" :: (ChangeToken) } -> {"Name" :: (ResourceName) , "ChangeToken" :: (ChangeToken) } ) -> CreateRegexPatternSetRequest
newCreateRegexPatternSetRequest' _ChangeToken _Name customize = (CreateRegexPatternSetRequest <<< customize) { "ChangeToken": _ChangeToken, "Name": _Name }



newtype CreateRegexPatternSetResponse = CreateRegexPatternSetResponse 
  { "RegexPatternSet" :: Maybe (RegexPatternSet)
  , "ChangeToken" :: Maybe (ChangeToken)
  }
derive instance newtypeCreateRegexPatternSetResponse :: Newtype CreateRegexPatternSetResponse _
derive instance repGenericCreateRegexPatternSetResponse :: Generic CreateRegexPatternSetResponse _
instance showCreateRegexPatternSetResponse :: Show CreateRegexPatternSetResponse where show = genericShow
instance decodeCreateRegexPatternSetResponse :: Decode CreateRegexPatternSetResponse where decode = genericDecode options
instance encodeCreateRegexPatternSetResponse :: Encode CreateRegexPatternSetResponse where encode = genericEncode options

-- | Constructs CreateRegexPatternSetResponse from required parameters
newCreateRegexPatternSetResponse :: CreateRegexPatternSetResponse
newCreateRegexPatternSetResponse  = CreateRegexPatternSetResponse { "ChangeToken": Nothing, "RegexPatternSet": Nothing }

-- | Constructs CreateRegexPatternSetResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateRegexPatternSetResponse' :: ( { "RegexPatternSet" :: Maybe (RegexPatternSet) , "ChangeToken" :: Maybe (ChangeToken) } -> {"RegexPatternSet" :: Maybe (RegexPatternSet) , "ChangeToken" :: Maybe (ChangeToken) } ) -> CreateRegexPatternSetResponse
newCreateRegexPatternSetResponse'  customize = (CreateRegexPatternSetResponse <<< customize) { "ChangeToken": Nothing, "RegexPatternSet": Nothing }



newtype CreateRuleGroupRequest = CreateRuleGroupRequest 
  { "Name" :: (ResourceName)
  , "MetricName" :: (MetricName)
  , "ChangeToken" :: (ChangeToken)
  }
derive instance newtypeCreateRuleGroupRequest :: Newtype CreateRuleGroupRequest _
derive instance repGenericCreateRuleGroupRequest :: Generic CreateRuleGroupRequest _
instance showCreateRuleGroupRequest :: Show CreateRuleGroupRequest where show = genericShow
instance decodeCreateRuleGroupRequest :: Decode CreateRuleGroupRequest where decode = genericDecode options
instance encodeCreateRuleGroupRequest :: Encode CreateRuleGroupRequest where encode = genericEncode options

-- | Constructs CreateRuleGroupRequest from required parameters
newCreateRuleGroupRequest :: ChangeToken -> MetricName -> ResourceName -> CreateRuleGroupRequest
newCreateRuleGroupRequest _ChangeToken _MetricName _Name = CreateRuleGroupRequest { "ChangeToken": _ChangeToken, "MetricName": _MetricName, "Name": _Name }

-- | Constructs CreateRuleGroupRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateRuleGroupRequest' :: ChangeToken -> MetricName -> ResourceName -> ( { "Name" :: (ResourceName) , "MetricName" :: (MetricName) , "ChangeToken" :: (ChangeToken) } -> {"Name" :: (ResourceName) , "MetricName" :: (MetricName) , "ChangeToken" :: (ChangeToken) } ) -> CreateRuleGroupRequest
newCreateRuleGroupRequest' _ChangeToken _MetricName _Name customize = (CreateRuleGroupRequest <<< customize) { "ChangeToken": _ChangeToken, "MetricName": _MetricName, "Name": _Name }



newtype CreateRuleGroupResponse = CreateRuleGroupResponse 
  { "RuleGroup" :: Maybe (RuleGroup)
  , "ChangeToken" :: Maybe (ChangeToken)
  }
derive instance newtypeCreateRuleGroupResponse :: Newtype CreateRuleGroupResponse _
derive instance repGenericCreateRuleGroupResponse :: Generic CreateRuleGroupResponse _
instance showCreateRuleGroupResponse :: Show CreateRuleGroupResponse where show = genericShow
instance decodeCreateRuleGroupResponse :: Decode CreateRuleGroupResponse where decode = genericDecode options
instance encodeCreateRuleGroupResponse :: Encode CreateRuleGroupResponse where encode = genericEncode options

-- | Constructs CreateRuleGroupResponse from required parameters
newCreateRuleGroupResponse :: CreateRuleGroupResponse
newCreateRuleGroupResponse  = CreateRuleGroupResponse { "ChangeToken": Nothing, "RuleGroup": Nothing }

-- | Constructs CreateRuleGroupResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateRuleGroupResponse' :: ( { "RuleGroup" :: Maybe (RuleGroup) , "ChangeToken" :: Maybe (ChangeToken) } -> {"RuleGroup" :: Maybe (RuleGroup) , "ChangeToken" :: Maybe (ChangeToken) } ) -> CreateRuleGroupResponse
newCreateRuleGroupResponse'  customize = (CreateRuleGroupResponse <<< customize) { "ChangeToken": Nothing, "RuleGroup": Nothing }



newtype CreateRuleRequest = CreateRuleRequest 
  { "Name" :: (ResourceName)
  , "MetricName" :: (MetricName)
  , "ChangeToken" :: (ChangeToken)
  }
derive instance newtypeCreateRuleRequest :: Newtype CreateRuleRequest _
derive instance repGenericCreateRuleRequest :: Generic CreateRuleRequest _
instance showCreateRuleRequest :: Show CreateRuleRequest where show = genericShow
instance decodeCreateRuleRequest :: Decode CreateRuleRequest where decode = genericDecode options
instance encodeCreateRuleRequest :: Encode CreateRuleRequest where encode = genericEncode options

-- | Constructs CreateRuleRequest from required parameters
newCreateRuleRequest :: ChangeToken -> MetricName -> ResourceName -> CreateRuleRequest
newCreateRuleRequest _ChangeToken _MetricName _Name = CreateRuleRequest { "ChangeToken": _ChangeToken, "MetricName": _MetricName, "Name": _Name }

-- | Constructs CreateRuleRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateRuleRequest' :: ChangeToken -> MetricName -> ResourceName -> ( { "Name" :: (ResourceName) , "MetricName" :: (MetricName) , "ChangeToken" :: (ChangeToken) } -> {"Name" :: (ResourceName) , "MetricName" :: (MetricName) , "ChangeToken" :: (ChangeToken) } ) -> CreateRuleRequest
newCreateRuleRequest' _ChangeToken _MetricName _Name customize = (CreateRuleRequest <<< customize) { "ChangeToken": _ChangeToken, "MetricName": _MetricName, "Name": _Name }



newtype CreateRuleResponse = CreateRuleResponse 
  { "Rule" :: Maybe (Rule)
  , "ChangeToken" :: Maybe (ChangeToken)
  }
derive instance newtypeCreateRuleResponse :: Newtype CreateRuleResponse _
derive instance repGenericCreateRuleResponse :: Generic CreateRuleResponse _
instance showCreateRuleResponse :: Show CreateRuleResponse where show = genericShow
instance decodeCreateRuleResponse :: Decode CreateRuleResponse where decode = genericDecode options
instance encodeCreateRuleResponse :: Encode CreateRuleResponse where encode = genericEncode options

-- | Constructs CreateRuleResponse from required parameters
newCreateRuleResponse :: CreateRuleResponse
newCreateRuleResponse  = CreateRuleResponse { "ChangeToken": Nothing, "Rule": Nothing }

-- | Constructs CreateRuleResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateRuleResponse' :: ( { "Rule" :: Maybe (Rule) , "ChangeToken" :: Maybe (ChangeToken) } -> {"Rule" :: Maybe (Rule) , "ChangeToken" :: Maybe (ChangeToken) } ) -> CreateRuleResponse
newCreateRuleResponse'  customize = (CreateRuleResponse <<< customize) { "ChangeToken": Nothing, "Rule": Nothing }



newtype CreateSizeConstraintSetRequest = CreateSizeConstraintSetRequest 
  { "Name" :: (ResourceName)
  , "ChangeToken" :: (ChangeToken)
  }
derive instance newtypeCreateSizeConstraintSetRequest :: Newtype CreateSizeConstraintSetRequest _
derive instance repGenericCreateSizeConstraintSetRequest :: Generic CreateSizeConstraintSetRequest _
instance showCreateSizeConstraintSetRequest :: Show CreateSizeConstraintSetRequest where show = genericShow
instance decodeCreateSizeConstraintSetRequest :: Decode CreateSizeConstraintSetRequest where decode = genericDecode options
instance encodeCreateSizeConstraintSetRequest :: Encode CreateSizeConstraintSetRequest where encode = genericEncode options

-- | Constructs CreateSizeConstraintSetRequest from required parameters
newCreateSizeConstraintSetRequest :: ChangeToken -> ResourceName -> CreateSizeConstraintSetRequest
newCreateSizeConstraintSetRequest _ChangeToken _Name = CreateSizeConstraintSetRequest { "ChangeToken": _ChangeToken, "Name": _Name }

-- | Constructs CreateSizeConstraintSetRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateSizeConstraintSetRequest' :: ChangeToken -> ResourceName -> ( { "Name" :: (ResourceName) , "ChangeToken" :: (ChangeToken) } -> {"Name" :: (ResourceName) , "ChangeToken" :: (ChangeToken) } ) -> CreateSizeConstraintSetRequest
newCreateSizeConstraintSetRequest' _ChangeToken _Name customize = (CreateSizeConstraintSetRequest <<< customize) { "ChangeToken": _ChangeToken, "Name": _Name }



newtype CreateSizeConstraintSetResponse = CreateSizeConstraintSetResponse 
  { "SizeConstraintSet" :: Maybe (SizeConstraintSet)
  , "ChangeToken" :: Maybe (ChangeToken)
  }
derive instance newtypeCreateSizeConstraintSetResponse :: Newtype CreateSizeConstraintSetResponse _
derive instance repGenericCreateSizeConstraintSetResponse :: Generic CreateSizeConstraintSetResponse _
instance showCreateSizeConstraintSetResponse :: Show CreateSizeConstraintSetResponse where show = genericShow
instance decodeCreateSizeConstraintSetResponse :: Decode CreateSizeConstraintSetResponse where decode = genericDecode options
instance encodeCreateSizeConstraintSetResponse :: Encode CreateSizeConstraintSetResponse where encode = genericEncode options

-- | Constructs CreateSizeConstraintSetResponse from required parameters
newCreateSizeConstraintSetResponse :: CreateSizeConstraintSetResponse
newCreateSizeConstraintSetResponse  = CreateSizeConstraintSetResponse { "ChangeToken": Nothing, "SizeConstraintSet": Nothing }

-- | Constructs CreateSizeConstraintSetResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateSizeConstraintSetResponse' :: ( { "SizeConstraintSet" :: Maybe (SizeConstraintSet) , "ChangeToken" :: Maybe (ChangeToken) } -> {"SizeConstraintSet" :: Maybe (SizeConstraintSet) , "ChangeToken" :: Maybe (ChangeToken) } ) -> CreateSizeConstraintSetResponse
newCreateSizeConstraintSetResponse'  customize = (CreateSizeConstraintSetResponse <<< customize) { "ChangeToken": Nothing, "SizeConstraintSet": Nothing }



-- | <p>A request to create a <a>SqlInjectionMatchSet</a>.</p>
newtype CreateSqlInjectionMatchSetRequest = CreateSqlInjectionMatchSetRequest 
  { "Name" :: (ResourceName)
  , "ChangeToken" :: (ChangeToken)
  }
derive instance newtypeCreateSqlInjectionMatchSetRequest :: Newtype CreateSqlInjectionMatchSetRequest _
derive instance repGenericCreateSqlInjectionMatchSetRequest :: Generic CreateSqlInjectionMatchSetRequest _
instance showCreateSqlInjectionMatchSetRequest :: Show CreateSqlInjectionMatchSetRequest where show = genericShow
instance decodeCreateSqlInjectionMatchSetRequest :: Decode CreateSqlInjectionMatchSetRequest where decode = genericDecode options
instance encodeCreateSqlInjectionMatchSetRequest :: Encode CreateSqlInjectionMatchSetRequest where encode = genericEncode options

-- | Constructs CreateSqlInjectionMatchSetRequest from required parameters
newCreateSqlInjectionMatchSetRequest :: ChangeToken -> ResourceName -> CreateSqlInjectionMatchSetRequest
newCreateSqlInjectionMatchSetRequest _ChangeToken _Name = CreateSqlInjectionMatchSetRequest { "ChangeToken": _ChangeToken, "Name": _Name }

-- | Constructs CreateSqlInjectionMatchSetRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateSqlInjectionMatchSetRequest' :: ChangeToken -> ResourceName -> ( { "Name" :: (ResourceName) , "ChangeToken" :: (ChangeToken) } -> {"Name" :: (ResourceName) , "ChangeToken" :: (ChangeToken) } ) -> CreateSqlInjectionMatchSetRequest
newCreateSqlInjectionMatchSetRequest' _ChangeToken _Name customize = (CreateSqlInjectionMatchSetRequest <<< customize) { "ChangeToken": _ChangeToken, "Name": _Name }



-- | <p>The response to a <code>CreateSqlInjectionMatchSet</code> request.</p>
newtype CreateSqlInjectionMatchSetResponse = CreateSqlInjectionMatchSetResponse 
  { "SqlInjectionMatchSet" :: Maybe (SqlInjectionMatchSet)
  , "ChangeToken" :: Maybe (ChangeToken)
  }
derive instance newtypeCreateSqlInjectionMatchSetResponse :: Newtype CreateSqlInjectionMatchSetResponse _
derive instance repGenericCreateSqlInjectionMatchSetResponse :: Generic CreateSqlInjectionMatchSetResponse _
instance showCreateSqlInjectionMatchSetResponse :: Show CreateSqlInjectionMatchSetResponse where show = genericShow
instance decodeCreateSqlInjectionMatchSetResponse :: Decode CreateSqlInjectionMatchSetResponse where decode = genericDecode options
instance encodeCreateSqlInjectionMatchSetResponse :: Encode CreateSqlInjectionMatchSetResponse where encode = genericEncode options

-- | Constructs CreateSqlInjectionMatchSetResponse from required parameters
newCreateSqlInjectionMatchSetResponse :: CreateSqlInjectionMatchSetResponse
newCreateSqlInjectionMatchSetResponse  = CreateSqlInjectionMatchSetResponse { "ChangeToken": Nothing, "SqlInjectionMatchSet": Nothing }

-- | Constructs CreateSqlInjectionMatchSetResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateSqlInjectionMatchSetResponse' :: ( { "SqlInjectionMatchSet" :: Maybe (SqlInjectionMatchSet) , "ChangeToken" :: Maybe (ChangeToken) } -> {"SqlInjectionMatchSet" :: Maybe (SqlInjectionMatchSet) , "ChangeToken" :: Maybe (ChangeToken) } ) -> CreateSqlInjectionMatchSetResponse
newCreateSqlInjectionMatchSetResponse'  customize = (CreateSqlInjectionMatchSetResponse <<< customize) { "ChangeToken": Nothing, "SqlInjectionMatchSet": Nothing }



newtype CreateWebACLRequest = CreateWebACLRequest 
  { "Name" :: (ResourceName)
  , "MetricName" :: (MetricName)
  , "DefaultAction" :: (WafAction)
  , "ChangeToken" :: (ChangeToken)
  }
derive instance newtypeCreateWebACLRequest :: Newtype CreateWebACLRequest _
derive instance repGenericCreateWebACLRequest :: Generic CreateWebACLRequest _
instance showCreateWebACLRequest :: Show CreateWebACLRequest where show = genericShow
instance decodeCreateWebACLRequest :: Decode CreateWebACLRequest where decode = genericDecode options
instance encodeCreateWebACLRequest :: Encode CreateWebACLRequest where encode = genericEncode options

-- | Constructs CreateWebACLRequest from required parameters
newCreateWebACLRequest :: ChangeToken -> WafAction -> MetricName -> ResourceName -> CreateWebACLRequest
newCreateWebACLRequest _ChangeToken _DefaultAction _MetricName _Name = CreateWebACLRequest { "ChangeToken": _ChangeToken, "DefaultAction": _DefaultAction, "MetricName": _MetricName, "Name": _Name }

-- | Constructs CreateWebACLRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateWebACLRequest' :: ChangeToken -> WafAction -> MetricName -> ResourceName -> ( { "Name" :: (ResourceName) , "MetricName" :: (MetricName) , "DefaultAction" :: (WafAction) , "ChangeToken" :: (ChangeToken) } -> {"Name" :: (ResourceName) , "MetricName" :: (MetricName) , "DefaultAction" :: (WafAction) , "ChangeToken" :: (ChangeToken) } ) -> CreateWebACLRequest
newCreateWebACLRequest' _ChangeToken _DefaultAction _MetricName _Name customize = (CreateWebACLRequest <<< customize) { "ChangeToken": _ChangeToken, "DefaultAction": _DefaultAction, "MetricName": _MetricName, "Name": _Name }



newtype CreateWebACLResponse = CreateWebACLResponse 
  { "WebACL" :: Maybe (WebACL)
  , "ChangeToken" :: Maybe (ChangeToken)
  }
derive instance newtypeCreateWebACLResponse :: Newtype CreateWebACLResponse _
derive instance repGenericCreateWebACLResponse :: Generic CreateWebACLResponse _
instance showCreateWebACLResponse :: Show CreateWebACLResponse where show = genericShow
instance decodeCreateWebACLResponse :: Decode CreateWebACLResponse where decode = genericDecode options
instance encodeCreateWebACLResponse :: Encode CreateWebACLResponse where encode = genericEncode options

-- | Constructs CreateWebACLResponse from required parameters
newCreateWebACLResponse :: CreateWebACLResponse
newCreateWebACLResponse  = CreateWebACLResponse { "ChangeToken": Nothing, "WebACL": Nothing }

-- | Constructs CreateWebACLResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateWebACLResponse' :: ( { "WebACL" :: Maybe (WebACL) , "ChangeToken" :: Maybe (ChangeToken) } -> {"WebACL" :: Maybe (WebACL) , "ChangeToken" :: Maybe (ChangeToken) } ) -> CreateWebACLResponse
newCreateWebACLResponse'  customize = (CreateWebACLResponse <<< customize) { "ChangeToken": Nothing, "WebACL": Nothing }



-- | <p>A request to create an <a>XssMatchSet</a>.</p>
newtype CreateXssMatchSetRequest = CreateXssMatchSetRequest 
  { "Name" :: (ResourceName)
  , "ChangeToken" :: (ChangeToken)
  }
derive instance newtypeCreateXssMatchSetRequest :: Newtype CreateXssMatchSetRequest _
derive instance repGenericCreateXssMatchSetRequest :: Generic CreateXssMatchSetRequest _
instance showCreateXssMatchSetRequest :: Show CreateXssMatchSetRequest where show = genericShow
instance decodeCreateXssMatchSetRequest :: Decode CreateXssMatchSetRequest where decode = genericDecode options
instance encodeCreateXssMatchSetRequest :: Encode CreateXssMatchSetRequest where encode = genericEncode options

-- | Constructs CreateXssMatchSetRequest from required parameters
newCreateXssMatchSetRequest :: ChangeToken -> ResourceName -> CreateXssMatchSetRequest
newCreateXssMatchSetRequest _ChangeToken _Name = CreateXssMatchSetRequest { "ChangeToken": _ChangeToken, "Name": _Name }

-- | Constructs CreateXssMatchSetRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateXssMatchSetRequest' :: ChangeToken -> ResourceName -> ( { "Name" :: (ResourceName) , "ChangeToken" :: (ChangeToken) } -> {"Name" :: (ResourceName) , "ChangeToken" :: (ChangeToken) } ) -> CreateXssMatchSetRequest
newCreateXssMatchSetRequest' _ChangeToken _Name customize = (CreateXssMatchSetRequest <<< customize) { "ChangeToken": _ChangeToken, "Name": _Name }



-- | <p>The response to a <code>CreateXssMatchSet</code> request.</p>
newtype CreateXssMatchSetResponse = CreateXssMatchSetResponse 
  { "XssMatchSet" :: Maybe (XssMatchSet)
  , "ChangeToken" :: Maybe (ChangeToken)
  }
derive instance newtypeCreateXssMatchSetResponse :: Newtype CreateXssMatchSetResponse _
derive instance repGenericCreateXssMatchSetResponse :: Generic CreateXssMatchSetResponse _
instance showCreateXssMatchSetResponse :: Show CreateXssMatchSetResponse where show = genericShow
instance decodeCreateXssMatchSetResponse :: Decode CreateXssMatchSetResponse where decode = genericDecode options
instance encodeCreateXssMatchSetResponse :: Encode CreateXssMatchSetResponse where encode = genericEncode options

-- | Constructs CreateXssMatchSetResponse from required parameters
newCreateXssMatchSetResponse :: CreateXssMatchSetResponse
newCreateXssMatchSetResponse  = CreateXssMatchSetResponse { "ChangeToken": Nothing, "XssMatchSet": Nothing }

-- | Constructs CreateXssMatchSetResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateXssMatchSetResponse' :: ( { "XssMatchSet" :: Maybe (XssMatchSet) , "ChangeToken" :: Maybe (ChangeToken) } -> {"XssMatchSet" :: Maybe (XssMatchSet) , "ChangeToken" :: Maybe (ChangeToken) } ) -> CreateXssMatchSetResponse
newCreateXssMatchSetResponse'  customize = (CreateXssMatchSetResponse <<< customize) { "ChangeToken": Nothing, "XssMatchSet": Nothing }



newtype DeleteByteMatchSetRequest = DeleteByteMatchSetRequest 
  { "ByteMatchSetId" :: (ResourceId)
  , "ChangeToken" :: (ChangeToken)
  }
derive instance newtypeDeleteByteMatchSetRequest :: Newtype DeleteByteMatchSetRequest _
derive instance repGenericDeleteByteMatchSetRequest :: Generic DeleteByteMatchSetRequest _
instance showDeleteByteMatchSetRequest :: Show DeleteByteMatchSetRequest where show = genericShow
instance decodeDeleteByteMatchSetRequest :: Decode DeleteByteMatchSetRequest where decode = genericDecode options
instance encodeDeleteByteMatchSetRequest :: Encode DeleteByteMatchSetRequest where encode = genericEncode options

-- | Constructs DeleteByteMatchSetRequest from required parameters
newDeleteByteMatchSetRequest :: ResourceId -> ChangeToken -> DeleteByteMatchSetRequest
newDeleteByteMatchSetRequest _ByteMatchSetId _ChangeToken = DeleteByteMatchSetRequest { "ByteMatchSetId": _ByteMatchSetId, "ChangeToken": _ChangeToken }

-- | Constructs DeleteByteMatchSetRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteByteMatchSetRequest' :: ResourceId -> ChangeToken -> ( { "ByteMatchSetId" :: (ResourceId) , "ChangeToken" :: (ChangeToken) } -> {"ByteMatchSetId" :: (ResourceId) , "ChangeToken" :: (ChangeToken) } ) -> DeleteByteMatchSetRequest
newDeleteByteMatchSetRequest' _ByteMatchSetId _ChangeToken customize = (DeleteByteMatchSetRequest <<< customize) { "ByteMatchSetId": _ByteMatchSetId, "ChangeToken": _ChangeToken }



newtype DeleteByteMatchSetResponse = DeleteByteMatchSetResponse 
  { "ChangeToken" :: Maybe (ChangeToken)
  }
derive instance newtypeDeleteByteMatchSetResponse :: Newtype DeleteByteMatchSetResponse _
derive instance repGenericDeleteByteMatchSetResponse :: Generic DeleteByteMatchSetResponse _
instance showDeleteByteMatchSetResponse :: Show DeleteByteMatchSetResponse where show = genericShow
instance decodeDeleteByteMatchSetResponse :: Decode DeleteByteMatchSetResponse where decode = genericDecode options
instance encodeDeleteByteMatchSetResponse :: Encode DeleteByteMatchSetResponse where encode = genericEncode options

-- | Constructs DeleteByteMatchSetResponse from required parameters
newDeleteByteMatchSetResponse :: DeleteByteMatchSetResponse
newDeleteByteMatchSetResponse  = DeleteByteMatchSetResponse { "ChangeToken": Nothing }

-- | Constructs DeleteByteMatchSetResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteByteMatchSetResponse' :: ( { "ChangeToken" :: Maybe (ChangeToken) } -> {"ChangeToken" :: Maybe (ChangeToken) } ) -> DeleteByteMatchSetResponse
newDeleteByteMatchSetResponse'  customize = (DeleteByteMatchSetResponse <<< customize) { "ChangeToken": Nothing }



newtype DeleteGeoMatchSetRequest = DeleteGeoMatchSetRequest 
  { "GeoMatchSetId" :: (ResourceId)
  , "ChangeToken" :: (ChangeToken)
  }
derive instance newtypeDeleteGeoMatchSetRequest :: Newtype DeleteGeoMatchSetRequest _
derive instance repGenericDeleteGeoMatchSetRequest :: Generic DeleteGeoMatchSetRequest _
instance showDeleteGeoMatchSetRequest :: Show DeleteGeoMatchSetRequest where show = genericShow
instance decodeDeleteGeoMatchSetRequest :: Decode DeleteGeoMatchSetRequest where decode = genericDecode options
instance encodeDeleteGeoMatchSetRequest :: Encode DeleteGeoMatchSetRequest where encode = genericEncode options

-- | Constructs DeleteGeoMatchSetRequest from required parameters
newDeleteGeoMatchSetRequest :: ChangeToken -> ResourceId -> DeleteGeoMatchSetRequest
newDeleteGeoMatchSetRequest _ChangeToken _GeoMatchSetId = DeleteGeoMatchSetRequest { "ChangeToken": _ChangeToken, "GeoMatchSetId": _GeoMatchSetId }

-- | Constructs DeleteGeoMatchSetRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteGeoMatchSetRequest' :: ChangeToken -> ResourceId -> ( { "GeoMatchSetId" :: (ResourceId) , "ChangeToken" :: (ChangeToken) } -> {"GeoMatchSetId" :: (ResourceId) , "ChangeToken" :: (ChangeToken) } ) -> DeleteGeoMatchSetRequest
newDeleteGeoMatchSetRequest' _ChangeToken _GeoMatchSetId customize = (DeleteGeoMatchSetRequest <<< customize) { "ChangeToken": _ChangeToken, "GeoMatchSetId": _GeoMatchSetId }



newtype DeleteGeoMatchSetResponse = DeleteGeoMatchSetResponse 
  { "ChangeToken" :: Maybe (ChangeToken)
  }
derive instance newtypeDeleteGeoMatchSetResponse :: Newtype DeleteGeoMatchSetResponse _
derive instance repGenericDeleteGeoMatchSetResponse :: Generic DeleteGeoMatchSetResponse _
instance showDeleteGeoMatchSetResponse :: Show DeleteGeoMatchSetResponse where show = genericShow
instance decodeDeleteGeoMatchSetResponse :: Decode DeleteGeoMatchSetResponse where decode = genericDecode options
instance encodeDeleteGeoMatchSetResponse :: Encode DeleteGeoMatchSetResponse where encode = genericEncode options

-- | Constructs DeleteGeoMatchSetResponse from required parameters
newDeleteGeoMatchSetResponse :: DeleteGeoMatchSetResponse
newDeleteGeoMatchSetResponse  = DeleteGeoMatchSetResponse { "ChangeToken": Nothing }

-- | Constructs DeleteGeoMatchSetResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteGeoMatchSetResponse' :: ( { "ChangeToken" :: Maybe (ChangeToken) } -> {"ChangeToken" :: Maybe (ChangeToken) } ) -> DeleteGeoMatchSetResponse
newDeleteGeoMatchSetResponse'  customize = (DeleteGeoMatchSetResponse <<< customize) { "ChangeToken": Nothing }



newtype DeleteIPSetRequest = DeleteIPSetRequest 
  { "IPSetId" :: (ResourceId)
  , "ChangeToken" :: (ChangeToken)
  }
derive instance newtypeDeleteIPSetRequest :: Newtype DeleteIPSetRequest _
derive instance repGenericDeleteIPSetRequest :: Generic DeleteIPSetRequest _
instance showDeleteIPSetRequest :: Show DeleteIPSetRequest where show = genericShow
instance decodeDeleteIPSetRequest :: Decode DeleteIPSetRequest where decode = genericDecode options
instance encodeDeleteIPSetRequest :: Encode DeleteIPSetRequest where encode = genericEncode options

-- | Constructs DeleteIPSetRequest from required parameters
newDeleteIPSetRequest :: ChangeToken -> ResourceId -> DeleteIPSetRequest
newDeleteIPSetRequest _ChangeToken _IPSetId = DeleteIPSetRequest { "ChangeToken": _ChangeToken, "IPSetId": _IPSetId }

-- | Constructs DeleteIPSetRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteIPSetRequest' :: ChangeToken -> ResourceId -> ( { "IPSetId" :: (ResourceId) , "ChangeToken" :: (ChangeToken) } -> {"IPSetId" :: (ResourceId) , "ChangeToken" :: (ChangeToken) } ) -> DeleteIPSetRequest
newDeleteIPSetRequest' _ChangeToken _IPSetId customize = (DeleteIPSetRequest <<< customize) { "ChangeToken": _ChangeToken, "IPSetId": _IPSetId }



newtype DeleteIPSetResponse = DeleteIPSetResponse 
  { "ChangeToken" :: Maybe (ChangeToken)
  }
derive instance newtypeDeleteIPSetResponse :: Newtype DeleteIPSetResponse _
derive instance repGenericDeleteIPSetResponse :: Generic DeleteIPSetResponse _
instance showDeleteIPSetResponse :: Show DeleteIPSetResponse where show = genericShow
instance decodeDeleteIPSetResponse :: Decode DeleteIPSetResponse where decode = genericDecode options
instance encodeDeleteIPSetResponse :: Encode DeleteIPSetResponse where encode = genericEncode options

-- | Constructs DeleteIPSetResponse from required parameters
newDeleteIPSetResponse :: DeleteIPSetResponse
newDeleteIPSetResponse  = DeleteIPSetResponse { "ChangeToken": Nothing }

-- | Constructs DeleteIPSetResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteIPSetResponse' :: ( { "ChangeToken" :: Maybe (ChangeToken) } -> {"ChangeToken" :: Maybe (ChangeToken) } ) -> DeleteIPSetResponse
newDeleteIPSetResponse'  customize = (DeleteIPSetResponse <<< customize) { "ChangeToken": Nothing }



newtype DeletePermissionPolicyRequest = DeletePermissionPolicyRequest 
  { "ResourceArn" :: (ResourceArn)
  }
derive instance newtypeDeletePermissionPolicyRequest :: Newtype DeletePermissionPolicyRequest _
derive instance repGenericDeletePermissionPolicyRequest :: Generic DeletePermissionPolicyRequest _
instance showDeletePermissionPolicyRequest :: Show DeletePermissionPolicyRequest where show = genericShow
instance decodeDeletePermissionPolicyRequest :: Decode DeletePermissionPolicyRequest where decode = genericDecode options
instance encodeDeletePermissionPolicyRequest :: Encode DeletePermissionPolicyRequest where encode = genericEncode options

-- | Constructs DeletePermissionPolicyRequest from required parameters
newDeletePermissionPolicyRequest :: ResourceArn -> DeletePermissionPolicyRequest
newDeletePermissionPolicyRequest _ResourceArn = DeletePermissionPolicyRequest { "ResourceArn": _ResourceArn }

-- | Constructs DeletePermissionPolicyRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeletePermissionPolicyRequest' :: ResourceArn -> ( { "ResourceArn" :: (ResourceArn) } -> {"ResourceArn" :: (ResourceArn) } ) -> DeletePermissionPolicyRequest
newDeletePermissionPolicyRequest' _ResourceArn customize = (DeletePermissionPolicyRequest <<< customize) { "ResourceArn": _ResourceArn }



newtype DeletePermissionPolicyResponse = DeletePermissionPolicyResponse Types.NoArguments
derive instance newtypeDeletePermissionPolicyResponse :: Newtype DeletePermissionPolicyResponse _
derive instance repGenericDeletePermissionPolicyResponse :: Generic DeletePermissionPolicyResponse _
instance showDeletePermissionPolicyResponse :: Show DeletePermissionPolicyResponse where show = genericShow
instance decodeDeletePermissionPolicyResponse :: Decode DeletePermissionPolicyResponse where decode = genericDecode options
instance encodeDeletePermissionPolicyResponse :: Encode DeletePermissionPolicyResponse where encode = genericEncode options



newtype DeleteRateBasedRuleRequest = DeleteRateBasedRuleRequest 
  { "RuleId" :: (ResourceId)
  , "ChangeToken" :: (ChangeToken)
  }
derive instance newtypeDeleteRateBasedRuleRequest :: Newtype DeleteRateBasedRuleRequest _
derive instance repGenericDeleteRateBasedRuleRequest :: Generic DeleteRateBasedRuleRequest _
instance showDeleteRateBasedRuleRequest :: Show DeleteRateBasedRuleRequest where show = genericShow
instance decodeDeleteRateBasedRuleRequest :: Decode DeleteRateBasedRuleRequest where decode = genericDecode options
instance encodeDeleteRateBasedRuleRequest :: Encode DeleteRateBasedRuleRequest where encode = genericEncode options

-- | Constructs DeleteRateBasedRuleRequest from required parameters
newDeleteRateBasedRuleRequest :: ChangeToken -> ResourceId -> DeleteRateBasedRuleRequest
newDeleteRateBasedRuleRequest _ChangeToken _RuleId = DeleteRateBasedRuleRequest { "ChangeToken": _ChangeToken, "RuleId": _RuleId }

-- | Constructs DeleteRateBasedRuleRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteRateBasedRuleRequest' :: ChangeToken -> ResourceId -> ( { "RuleId" :: (ResourceId) , "ChangeToken" :: (ChangeToken) } -> {"RuleId" :: (ResourceId) , "ChangeToken" :: (ChangeToken) } ) -> DeleteRateBasedRuleRequest
newDeleteRateBasedRuleRequest' _ChangeToken _RuleId customize = (DeleteRateBasedRuleRequest <<< customize) { "ChangeToken": _ChangeToken, "RuleId": _RuleId }



newtype DeleteRateBasedRuleResponse = DeleteRateBasedRuleResponse 
  { "ChangeToken" :: Maybe (ChangeToken)
  }
derive instance newtypeDeleteRateBasedRuleResponse :: Newtype DeleteRateBasedRuleResponse _
derive instance repGenericDeleteRateBasedRuleResponse :: Generic DeleteRateBasedRuleResponse _
instance showDeleteRateBasedRuleResponse :: Show DeleteRateBasedRuleResponse where show = genericShow
instance decodeDeleteRateBasedRuleResponse :: Decode DeleteRateBasedRuleResponse where decode = genericDecode options
instance encodeDeleteRateBasedRuleResponse :: Encode DeleteRateBasedRuleResponse where encode = genericEncode options

-- | Constructs DeleteRateBasedRuleResponse from required parameters
newDeleteRateBasedRuleResponse :: DeleteRateBasedRuleResponse
newDeleteRateBasedRuleResponse  = DeleteRateBasedRuleResponse { "ChangeToken": Nothing }

-- | Constructs DeleteRateBasedRuleResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteRateBasedRuleResponse' :: ( { "ChangeToken" :: Maybe (ChangeToken) } -> {"ChangeToken" :: Maybe (ChangeToken) } ) -> DeleteRateBasedRuleResponse
newDeleteRateBasedRuleResponse'  customize = (DeleteRateBasedRuleResponse <<< customize) { "ChangeToken": Nothing }



newtype DeleteRegexMatchSetRequest = DeleteRegexMatchSetRequest 
  { "RegexMatchSetId" :: (ResourceId)
  , "ChangeToken" :: (ChangeToken)
  }
derive instance newtypeDeleteRegexMatchSetRequest :: Newtype DeleteRegexMatchSetRequest _
derive instance repGenericDeleteRegexMatchSetRequest :: Generic DeleteRegexMatchSetRequest _
instance showDeleteRegexMatchSetRequest :: Show DeleteRegexMatchSetRequest where show = genericShow
instance decodeDeleteRegexMatchSetRequest :: Decode DeleteRegexMatchSetRequest where decode = genericDecode options
instance encodeDeleteRegexMatchSetRequest :: Encode DeleteRegexMatchSetRequest where encode = genericEncode options

-- | Constructs DeleteRegexMatchSetRequest from required parameters
newDeleteRegexMatchSetRequest :: ChangeToken -> ResourceId -> DeleteRegexMatchSetRequest
newDeleteRegexMatchSetRequest _ChangeToken _RegexMatchSetId = DeleteRegexMatchSetRequest { "ChangeToken": _ChangeToken, "RegexMatchSetId": _RegexMatchSetId }

-- | Constructs DeleteRegexMatchSetRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteRegexMatchSetRequest' :: ChangeToken -> ResourceId -> ( { "RegexMatchSetId" :: (ResourceId) , "ChangeToken" :: (ChangeToken) } -> {"RegexMatchSetId" :: (ResourceId) , "ChangeToken" :: (ChangeToken) } ) -> DeleteRegexMatchSetRequest
newDeleteRegexMatchSetRequest' _ChangeToken _RegexMatchSetId customize = (DeleteRegexMatchSetRequest <<< customize) { "ChangeToken": _ChangeToken, "RegexMatchSetId": _RegexMatchSetId }



newtype DeleteRegexMatchSetResponse = DeleteRegexMatchSetResponse 
  { "ChangeToken" :: Maybe (ChangeToken)
  }
derive instance newtypeDeleteRegexMatchSetResponse :: Newtype DeleteRegexMatchSetResponse _
derive instance repGenericDeleteRegexMatchSetResponse :: Generic DeleteRegexMatchSetResponse _
instance showDeleteRegexMatchSetResponse :: Show DeleteRegexMatchSetResponse where show = genericShow
instance decodeDeleteRegexMatchSetResponse :: Decode DeleteRegexMatchSetResponse where decode = genericDecode options
instance encodeDeleteRegexMatchSetResponse :: Encode DeleteRegexMatchSetResponse where encode = genericEncode options

-- | Constructs DeleteRegexMatchSetResponse from required parameters
newDeleteRegexMatchSetResponse :: DeleteRegexMatchSetResponse
newDeleteRegexMatchSetResponse  = DeleteRegexMatchSetResponse { "ChangeToken": Nothing }

-- | Constructs DeleteRegexMatchSetResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteRegexMatchSetResponse' :: ( { "ChangeToken" :: Maybe (ChangeToken) } -> {"ChangeToken" :: Maybe (ChangeToken) } ) -> DeleteRegexMatchSetResponse
newDeleteRegexMatchSetResponse'  customize = (DeleteRegexMatchSetResponse <<< customize) { "ChangeToken": Nothing }



newtype DeleteRegexPatternSetRequest = DeleteRegexPatternSetRequest 
  { "RegexPatternSetId" :: (ResourceId)
  , "ChangeToken" :: (ChangeToken)
  }
derive instance newtypeDeleteRegexPatternSetRequest :: Newtype DeleteRegexPatternSetRequest _
derive instance repGenericDeleteRegexPatternSetRequest :: Generic DeleteRegexPatternSetRequest _
instance showDeleteRegexPatternSetRequest :: Show DeleteRegexPatternSetRequest where show = genericShow
instance decodeDeleteRegexPatternSetRequest :: Decode DeleteRegexPatternSetRequest where decode = genericDecode options
instance encodeDeleteRegexPatternSetRequest :: Encode DeleteRegexPatternSetRequest where encode = genericEncode options

-- | Constructs DeleteRegexPatternSetRequest from required parameters
newDeleteRegexPatternSetRequest :: ChangeToken -> ResourceId -> DeleteRegexPatternSetRequest
newDeleteRegexPatternSetRequest _ChangeToken _RegexPatternSetId = DeleteRegexPatternSetRequest { "ChangeToken": _ChangeToken, "RegexPatternSetId": _RegexPatternSetId }

-- | Constructs DeleteRegexPatternSetRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteRegexPatternSetRequest' :: ChangeToken -> ResourceId -> ( { "RegexPatternSetId" :: (ResourceId) , "ChangeToken" :: (ChangeToken) } -> {"RegexPatternSetId" :: (ResourceId) , "ChangeToken" :: (ChangeToken) } ) -> DeleteRegexPatternSetRequest
newDeleteRegexPatternSetRequest' _ChangeToken _RegexPatternSetId customize = (DeleteRegexPatternSetRequest <<< customize) { "ChangeToken": _ChangeToken, "RegexPatternSetId": _RegexPatternSetId }



newtype DeleteRegexPatternSetResponse = DeleteRegexPatternSetResponse 
  { "ChangeToken" :: Maybe (ChangeToken)
  }
derive instance newtypeDeleteRegexPatternSetResponse :: Newtype DeleteRegexPatternSetResponse _
derive instance repGenericDeleteRegexPatternSetResponse :: Generic DeleteRegexPatternSetResponse _
instance showDeleteRegexPatternSetResponse :: Show DeleteRegexPatternSetResponse where show = genericShow
instance decodeDeleteRegexPatternSetResponse :: Decode DeleteRegexPatternSetResponse where decode = genericDecode options
instance encodeDeleteRegexPatternSetResponse :: Encode DeleteRegexPatternSetResponse where encode = genericEncode options

-- | Constructs DeleteRegexPatternSetResponse from required parameters
newDeleteRegexPatternSetResponse :: DeleteRegexPatternSetResponse
newDeleteRegexPatternSetResponse  = DeleteRegexPatternSetResponse { "ChangeToken": Nothing }

-- | Constructs DeleteRegexPatternSetResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteRegexPatternSetResponse' :: ( { "ChangeToken" :: Maybe (ChangeToken) } -> {"ChangeToken" :: Maybe (ChangeToken) } ) -> DeleteRegexPatternSetResponse
newDeleteRegexPatternSetResponse'  customize = (DeleteRegexPatternSetResponse <<< customize) { "ChangeToken": Nothing }



newtype DeleteRuleGroupRequest = DeleteRuleGroupRequest 
  { "RuleGroupId" :: (ResourceId)
  , "ChangeToken" :: (ChangeToken)
  }
derive instance newtypeDeleteRuleGroupRequest :: Newtype DeleteRuleGroupRequest _
derive instance repGenericDeleteRuleGroupRequest :: Generic DeleteRuleGroupRequest _
instance showDeleteRuleGroupRequest :: Show DeleteRuleGroupRequest where show = genericShow
instance decodeDeleteRuleGroupRequest :: Decode DeleteRuleGroupRequest where decode = genericDecode options
instance encodeDeleteRuleGroupRequest :: Encode DeleteRuleGroupRequest where encode = genericEncode options

-- | Constructs DeleteRuleGroupRequest from required parameters
newDeleteRuleGroupRequest :: ChangeToken -> ResourceId -> DeleteRuleGroupRequest
newDeleteRuleGroupRequest _ChangeToken _RuleGroupId = DeleteRuleGroupRequest { "ChangeToken": _ChangeToken, "RuleGroupId": _RuleGroupId }

-- | Constructs DeleteRuleGroupRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteRuleGroupRequest' :: ChangeToken -> ResourceId -> ( { "RuleGroupId" :: (ResourceId) , "ChangeToken" :: (ChangeToken) } -> {"RuleGroupId" :: (ResourceId) , "ChangeToken" :: (ChangeToken) } ) -> DeleteRuleGroupRequest
newDeleteRuleGroupRequest' _ChangeToken _RuleGroupId customize = (DeleteRuleGroupRequest <<< customize) { "ChangeToken": _ChangeToken, "RuleGroupId": _RuleGroupId }



newtype DeleteRuleGroupResponse = DeleteRuleGroupResponse 
  { "ChangeToken" :: Maybe (ChangeToken)
  }
derive instance newtypeDeleteRuleGroupResponse :: Newtype DeleteRuleGroupResponse _
derive instance repGenericDeleteRuleGroupResponse :: Generic DeleteRuleGroupResponse _
instance showDeleteRuleGroupResponse :: Show DeleteRuleGroupResponse where show = genericShow
instance decodeDeleteRuleGroupResponse :: Decode DeleteRuleGroupResponse where decode = genericDecode options
instance encodeDeleteRuleGroupResponse :: Encode DeleteRuleGroupResponse where encode = genericEncode options

-- | Constructs DeleteRuleGroupResponse from required parameters
newDeleteRuleGroupResponse :: DeleteRuleGroupResponse
newDeleteRuleGroupResponse  = DeleteRuleGroupResponse { "ChangeToken": Nothing }

-- | Constructs DeleteRuleGroupResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteRuleGroupResponse' :: ( { "ChangeToken" :: Maybe (ChangeToken) } -> {"ChangeToken" :: Maybe (ChangeToken) } ) -> DeleteRuleGroupResponse
newDeleteRuleGroupResponse'  customize = (DeleteRuleGroupResponse <<< customize) { "ChangeToken": Nothing }



newtype DeleteRuleRequest = DeleteRuleRequest 
  { "RuleId" :: (ResourceId)
  , "ChangeToken" :: (ChangeToken)
  }
derive instance newtypeDeleteRuleRequest :: Newtype DeleteRuleRequest _
derive instance repGenericDeleteRuleRequest :: Generic DeleteRuleRequest _
instance showDeleteRuleRequest :: Show DeleteRuleRequest where show = genericShow
instance decodeDeleteRuleRequest :: Decode DeleteRuleRequest where decode = genericDecode options
instance encodeDeleteRuleRequest :: Encode DeleteRuleRequest where encode = genericEncode options

-- | Constructs DeleteRuleRequest from required parameters
newDeleteRuleRequest :: ChangeToken -> ResourceId -> DeleteRuleRequest
newDeleteRuleRequest _ChangeToken _RuleId = DeleteRuleRequest { "ChangeToken": _ChangeToken, "RuleId": _RuleId }

-- | Constructs DeleteRuleRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteRuleRequest' :: ChangeToken -> ResourceId -> ( { "RuleId" :: (ResourceId) , "ChangeToken" :: (ChangeToken) } -> {"RuleId" :: (ResourceId) , "ChangeToken" :: (ChangeToken) } ) -> DeleteRuleRequest
newDeleteRuleRequest' _ChangeToken _RuleId customize = (DeleteRuleRequest <<< customize) { "ChangeToken": _ChangeToken, "RuleId": _RuleId }



newtype DeleteRuleResponse = DeleteRuleResponse 
  { "ChangeToken" :: Maybe (ChangeToken)
  }
derive instance newtypeDeleteRuleResponse :: Newtype DeleteRuleResponse _
derive instance repGenericDeleteRuleResponse :: Generic DeleteRuleResponse _
instance showDeleteRuleResponse :: Show DeleteRuleResponse where show = genericShow
instance decodeDeleteRuleResponse :: Decode DeleteRuleResponse where decode = genericDecode options
instance encodeDeleteRuleResponse :: Encode DeleteRuleResponse where encode = genericEncode options

-- | Constructs DeleteRuleResponse from required parameters
newDeleteRuleResponse :: DeleteRuleResponse
newDeleteRuleResponse  = DeleteRuleResponse { "ChangeToken": Nothing }

-- | Constructs DeleteRuleResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteRuleResponse' :: ( { "ChangeToken" :: Maybe (ChangeToken) } -> {"ChangeToken" :: Maybe (ChangeToken) } ) -> DeleteRuleResponse
newDeleteRuleResponse'  customize = (DeleteRuleResponse <<< customize) { "ChangeToken": Nothing }



newtype DeleteSizeConstraintSetRequest = DeleteSizeConstraintSetRequest 
  { "SizeConstraintSetId" :: (ResourceId)
  , "ChangeToken" :: (ChangeToken)
  }
derive instance newtypeDeleteSizeConstraintSetRequest :: Newtype DeleteSizeConstraintSetRequest _
derive instance repGenericDeleteSizeConstraintSetRequest :: Generic DeleteSizeConstraintSetRequest _
instance showDeleteSizeConstraintSetRequest :: Show DeleteSizeConstraintSetRequest where show = genericShow
instance decodeDeleteSizeConstraintSetRequest :: Decode DeleteSizeConstraintSetRequest where decode = genericDecode options
instance encodeDeleteSizeConstraintSetRequest :: Encode DeleteSizeConstraintSetRequest where encode = genericEncode options

-- | Constructs DeleteSizeConstraintSetRequest from required parameters
newDeleteSizeConstraintSetRequest :: ChangeToken -> ResourceId -> DeleteSizeConstraintSetRequest
newDeleteSizeConstraintSetRequest _ChangeToken _SizeConstraintSetId = DeleteSizeConstraintSetRequest { "ChangeToken": _ChangeToken, "SizeConstraintSetId": _SizeConstraintSetId }

-- | Constructs DeleteSizeConstraintSetRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteSizeConstraintSetRequest' :: ChangeToken -> ResourceId -> ( { "SizeConstraintSetId" :: (ResourceId) , "ChangeToken" :: (ChangeToken) } -> {"SizeConstraintSetId" :: (ResourceId) , "ChangeToken" :: (ChangeToken) } ) -> DeleteSizeConstraintSetRequest
newDeleteSizeConstraintSetRequest' _ChangeToken _SizeConstraintSetId customize = (DeleteSizeConstraintSetRequest <<< customize) { "ChangeToken": _ChangeToken, "SizeConstraintSetId": _SizeConstraintSetId }



newtype DeleteSizeConstraintSetResponse = DeleteSizeConstraintSetResponse 
  { "ChangeToken" :: Maybe (ChangeToken)
  }
derive instance newtypeDeleteSizeConstraintSetResponse :: Newtype DeleteSizeConstraintSetResponse _
derive instance repGenericDeleteSizeConstraintSetResponse :: Generic DeleteSizeConstraintSetResponse _
instance showDeleteSizeConstraintSetResponse :: Show DeleteSizeConstraintSetResponse where show = genericShow
instance decodeDeleteSizeConstraintSetResponse :: Decode DeleteSizeConstraintSetResponse where decode = genericDecode options
instance encodeDeleteSizeConstraintSetResponse :: Encode DeleteSizeConstraintSetResponse where encode = genericEncode options

-- | Constructs DeleteSizeConstraintSetResponse from required parameters
newDeleteSizeConstraintSetResponse :: DeleteSizeConstraintSetResponse
newDeleteSizeConstraintSetResponse  = DeleteSizeConstraintSetResponse { "ChangeToken": Nothing }

-- | Constructs DeleteSizeConstraintSetResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteSizeConstraintSetResponse' :: ( { "ChangeToken" :: Maybe (ChangeToken) } -> {"ChangeToken" :: Maybe (ChangeToken) } ) -> DeleteSizeConstraintSetResponse
newDeleteSizeConstraintSetResponse'  customize = (DeleteSizeConstraintSetResponse <<< customize) { "ChangeToken": Nothing }



-- | <p>A request to delete a <a>SqlInjectionMatchSet</a> from AWS WAF.</p>
newtype DeleteSqlInjectionMatchSetRequest = DeleteSqlInjectionMatchSetRequest 
  { "SqlInjectionMatchSetId" :: (ResourceId)
  , "ChangeToken" :: (ChangeToken)
  }
derive instance newtypeDeleteSqlInjectionMatchSetRequest :: Newtype DeleteSqlInjectionMatchSetRequest _
derive instance repGenericDeleteSqlInjectionMatchSetRequest :: Generic DeleteSqlInjectionMatchSetRequest _
instance showDeleteSqlInjectionMatchSetRequest :: Show DeleteSqlInjectionMatchSetRequest where show = genericShow
instance decodeDeleteSqlInjectionMatchSetRequest :: Decode DeleteSqlInjectionMatchSetRequest where decode = genericDecode options
instance encodeDeleteSqlInjectionMatchSetRequest :: Encode DeleteSqlInjectionMatchSetRequest where encode = genericEncode options

-- | Constructs DeleteSqlInjectionMatchSetRequest from required parameters
newDeleteSqlInjectionMatchSetRequest :: ChangeToken -> ResourceId -> DeleteSqlInjectionMatchSetRequest
newDeleteSqlInjectionMatchSetRequest _ChangeToken _SqlInjectionMatchSetId = DeleteSqlInjectionMatchSetRequest { "ChangeToken": _ChangeToken, "SqlInjectionMatchSetId": _SqlInjectionMatchSetId }

-- | Constructs DeleteSqlInjectionMatchSetRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteSqlInjectionMatchSetRequest' :: ChangeToken -> ResourceId -> ( { "SqlInjectionMatchSetId" :: (ResourceId) , "ChangeToken" :: (ChangeToken) } -> {"SqlInjectionMatchSetId" :: (ResourceId) , "ChangeToken" :: (ChangeToken) } ) -> DeleteSqlInjectionMatchSetRequest
newDeleteSqlInjectionMatchSetRequest' _ChangeToken _SqlInjectionMatchSetId customize = (DeleteSqlInjectionMatchSetRequest <<< customize) { "ChangeToken": _ChangeToken, "SqlInjectionMatchSetId": _SqlInjectionMatchSetId }



-- | <p>The response to a request to delete a <a>SqlInjectionMatchSet</a> from AWS WAF.</p>
newtype DeleteSqlInjectionMatchSetResponse = DeleteSqlInjectionMatchSetResponse 
  { "ChangeToken" :: Maybe (ChangeToken)
  }
derive instance newtypeDeleteSqlInjectionMatchSetResponse :: Newtype DeleteSqlInjectionMatchSetResponse _
derive instance repGenericDeleteSqlInjectionMatchSetResponse :: Generic DeleteSqlInjectionMatchSetResponse _
instance showDeleteSqlInjectionMatchSetResponse :: Show DeleteSqlInjectionMatchSetResponse where show = genericShow
instance decodeDeleteSqlInjectionMatchSetResponse :: Decode DeleteSqlInjectionMatchSetResponse where decode = genericDecode options
instance encodeDeleteSqlInjectionMatchSetResponse :: Encode DeleteSqlInjectionMatchSetResponse where encode = genericEncode options

-- | Constructs DeleteSqlInjectionMatchSetResponse from required parameters
newDeleteSqlInjectionMatchSetResponse :: DeleteSqlInjectionMatchSetResponse
newDeleteSqlInjectionMatchSetResponse  = DeleteSqlInjectionMatchSetResponse { "ChangeToken": Nothing }

-- | Constructs DeleteSqlInjectionMatchSetResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteSqlInjectionMatchSetResponse' :: ( { "ChangeToken" :: Maybe (ChangeToken) } -> {"ChangeToken" :: Maybe (ChangeToken) } ) -> DeleteSqlInjectionMatchSetResponse
newDeleteSqlInjectionMatchSetResponse'  customize = (DeleteSqlInjectionMatchSetResponse <<< customize) { "ChangeToken": Nothing }



newtype DeleteWebACLRequest = DeleteWebACLRequest 
  { "WebACLId" :: (ResourceId)
  , "ChangeToken" :: (ChangeToken)
  }
derive instance newtypeDeleteWebACLRequest :: Newtype DeleteWebACLRequest _
derive instance repGenericDeleteWebACLRequest :: Generic DeleteWebACLRequest _
instance showDeleteWebACLRequest :: Show DeleteWebACLRequest where show = genericShow
instance decodeDeleteWebACLRequest :: Decode DeleteWebACLRequest where decode = genericDecode options
instance encodeDeleteWebACLRequest :: Encode DeleteWebACLRequest where encode = genericEncode options

-- | Constructs DeleteWebACLRequest from required parameters
newDeleteWebACLRequest :: ChangeToken -> ResourceId -> DeleteWebACLRequest
newDeleteWebACLRequest _ChangeToken _WebACLId = DeleteWebACLRequest { "ChangeToken": _ChangeToken, "WebACLId": _WebACLId }

-- | Constructs DeleteWebACLRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteWebACLRequest' :: ChangeToken -> ResourceId -> ( { "WebACLId" :: (ResourceId) , "ChangeToken" :: (ChangeToken) } -> {"WebACLId" :: (ResourceId) , "ChangeToken" :: (ChangeToken) } ) -> DeleteWebACLRequest
newDeleteWebACLRequest' _ChangeToken _WebACLId customize = (DeleteWebACLRequest <<< customize) { "ChangeToken": _ChangeToken, "WebACLId": _WebACLId }



newtype DeleteWebACLResponse = DeleteWebACLResponse 
  { "ChangeToken" :: Maybe (ChangeToken)
  }
derive instance newtypeDeleteWebACLResponse :: Newtype DeleteWebACLResponse _
derive instance repGenericDeleteWebACLResponse :: Generic DeleteWebACLResponse _
instance showDeleteWebACLResponse :: Show DeleteWebACLResponse where show = genericShow
instance decodeDeleteWebACLResponse :: Decode DeleteWebACLResponse where decode = genericDecode options
instance encodeDeleteWebACLResponse :: Encode DeleteWebACLResponse where encode = genericEncode options

-- | Constructs DeleteWebACLResponse from required parameters
newDeleteWebACLResponse :: DeleteWebACLResponse
newDeleteWebACLResponse  = DeleteWebACLResponse { "ChangeToken": Nothing }

-- | Constructs DeleteWebACLResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteWebACLResponse' :: ( { "ChangeToken" :: Maybe (ChangeToken) } -> {"ChangeToken" :: Maybe (ChangeToken) } ) -> DeleteWebACLResponse
newDeleteWebACLResponse'  customize = (DeleteWebACLResponse <<< customize) { "ChangeToken": Nothing }



-- | <p>A request to delete an <a>XssMatchSet</a> from AWS WAF.</p>
newtype DeleteXssMatchSetRequest = DeleteXssMatchSetRequest 
  { "XssMatchSetId" :: (ResourceId)
  , "ChangeToken" :: (ChangeToken)
  }
derive instance newtypeDeleteXssMatchSetRequest :: Newtype DeleteXssMatchSetRequest _
derive instance repGenericDeleteXssMatchSetRequest :: Generic DeleteXssMatchSetRequest _
instance showDeleteXssMatchSetRequest :: Show DeleteXssMatchSetRequest where show = genericShow
instance decodeDeleteXssMatchSetRequest :: Decode DeleteXssMatchSetRequest where decode = genericDecode options
instance encodeDeleteXssMatchSetRequest :: Encode DeleteXssMatchSetRequest where encode = genericEncode options

-- | Constructs DeleteXssMatchSetRequest from required parameters
newDeleteXssMatchSetRequest :: ChangeToken -> ResourceId -> DeleteXssMatchSetRequest
newDeleteXssMatchSetRequest _ChangeToken _XssMatchSetId = DeleteXssMatchSetRequest { "ChangeToken": _ChangeToken, "XssMatchSetId": _XssMatchSetId }

-- | Constructs DeleteXssMatchSetRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteXssMatchSetRequest' :: ChangeToken -> ResourceId -> ( { "XssMatchSetId" :: (ResourceId) , "ChangeToken" :: (ChangeToken) } -> {"XssMatchSetId" :: (ResourceId) , "ChangeToken" :: (ChangeToken) } ) -> DeleteXssMatchSetRequest
newDeleteXssMatchSetRequest' _ChangeToken _XssMatchSetId customize = (DeleteXssMatchSetRequest <<< customize) { "ChangeToken": _ChangeToken, "XssMatchSetId": _XssMatchSetId }



-- | <p>The response to a request to delete an <a>XssMatchSet</a> from AWS WAF.</p>
newtype DeleteXssMatchSetResponse = DeleteXssMatchSetResponse 
  { "ChangeToken" :: Maybe (ChangeToken)
  }
derive instance newtypeDeleteXssMatchSetResponse :: Newtype DeleteXssMatchSetResponse _
derive instance repGenericDeleteXssMatchSetResponse :: Generic DeleteXssMatchSetResponse _
instance showDeleteXssMatchSetResponse :: Show DeleteXssMatchSetResponse where show = genericShow
instance decodeDeleteXssMatchSetResponse :: Decode DeleteXssMatchSetResponse where decode = genericDecode options
instance encodeDeleteXssMatchSetResponse :: Encode DeleteXssMatchSetResponse where encode = genericEncode options

-- | Constructs DeleteXssMatchSetResponse from required parameters
newDeleteXssMatchSetResponse :: DeleteXssMatchSetResponse
newDeleteXssMatchSetResponse  = DeleteXssMatchSetResponse { "ChangeToken": Nothing }

-- | Constructs DeleteXssMatchSetResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteXssMatchSetResponse' :: ( { "ChangeToken" :: Maybe (ChangeToken) } -> {"ChangeToken" :: Maybe (ChangeToken) } ) -> DeleteXssMatchSetResponse
newDeleteXssMatchSetResponse'  customize = (DeleteXssMatchSetResponse <<< customize) { "ChangeToken": Nothing }



newtype DisassociateWebACLRequest = DisassociateWebACLRequest 
  { "ResourceArn" :: (ResourceArn)
  }
derive instance newtypeDisassociateWebACLRequest :: Newtype DisassociateWebACLRequest _
derive instance repGenericDisassociateWebACLRequest :: Generic DisassociateWebACLRequest _
instance showDisassociateWebACLRequest :: Show DisassociateWebACLRequest where show = genericShow
instance decodeDisassociateWebACLRequest :: Decode DisassociateWebACLRequest where decode = genericDecode options
instance encodeDisassociateWebACLRequest :: Encode DisassociateWebACLRequest where encode = genericEncode options

-- | Constructs DisassociateWebACLRequest from required parameters
newDisassociateWebACLRequest :: ResourceArn -> DisassociateWebACLRequest
newDisassociateWebACLRequest _ResourceArn = DisassociateWebACLRequest { "ResourceArn": _ResourceArn }

-- | Constructs DisassociateWebACLRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDisassociateWebACLRequest' :: ResourceArn -> ( { "ResourceArn" :: (ResourceArn) } -> {"ResourceArn" :: (ResourceArn) } ) -> DisassociateWebACLRequest
newDisassociateWebACLRequest' _ResourceArn customize = (DisassociateWebACLRequest <<< customize) { "ResourceArn": _ResourceArn }



newtype DisassociateWebACLResponse = DisassociateWebACLResponse Types.NoArguments
derive instance newtypeDisassociateWebACLResponse :: Newtype DisassociateWebACLResponse _
derive instance repGenericDisassociateWebACLResponse :: Generic DisassociateWebACLResponse _
instance showDisassociateWebACLResponse :: Show DisassociateWebACLResponse where show = genericShow
instance decodeDisassociateWebACLResponse :: Decode DisassociateWebACLResponse where decode = genericDecode options
instance encodeDisassociateWebACLResponse :: Encode DisassociateWebACLResponse where encode = genericEncode options



-- | <p>Specifies where in a web request to look for <code>TargetString</code>.</p>
newtype FieldToMatch = FieldToMatch 
  { "Type" :: (MatchFieldType)
  , "Data" :: Maybe (MatchFieldData)
  }
derive instance newtypeFieldToMatch :: Newtype FieldToMatch _
derive instance repGenericFieldToMatch :: Generic FieldToMatch _
instance showFieldToMatch :: Show FieldToMatch where show = genericShow
instance decodeFieldToMatch :: Decode FieldToMatch where decode = genericDecode options
instance encodeFieldToMatch :: Encode FieldToMatch where encode = genericEncode options

-- | Constructs FieldToMatch from required parameters
newFieldToMatch :: MatchFieldType -> FieldToMatch
newFieldToMatch _Type = FieldToMatch { "Type": _Type, "Data": Nothing }

-- | Constructs FieldToMatch's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newFieldToMatch' :: MatchFieldType -> ( { "Type" :: (MatchFieldType) , "Data" :: Maybe (MatchFieldData) } -> {"Type" :: (MatchFieldType) , "Data" :: Maybe (MatchFieldData) } ) -> FieldToMatch
newFieldToMatch' _Type customize = (FieldToMatch <<< customize) { "Type": _Type, "Data": Nothing }



-- | <p>The country from which web requests originate that you want AWS WAF to search for.</p>
newtype GeoMatchConstraint = GeoMatchConstraint 
  { "Type" :: (GeoMatchConstraintType)
  , "Value" :: (GeoMatchConstraintValue)
  }
derive instance newtypeGeoMatchConstraint :: Newtype GeoMatchConstraint _
derive instance repGenericGeoMatchConstraint :: Generic GeoMatchConstraint _
instance showGeoMatchConstraint :: Show GeoMatchConstraint where show = genericShow
instance decodeGeoMatchConstraint :: Decode GeoMatchConstraint where decode = genericDecode options
instance encodeGeoMatchConstraint :: Encode GeoMatchConstraint where encode = genericEncode options

-- | Constructs GeoMatchConstraint from required parameters
newGeoMatchConstraint :: GeoMatchConstraintType -> GeoMatchConstraintValue -> GeoMatchConstraint
newGeoMatchConstraint _Type _Value = GeoMatchConstraint { "Type": _Type, "Value": _Value }

-- | Constructs GeoMatchConstraint's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGeoMatchConstraint' :: GeoMatchConstraintType -> GeoMatchConstraintValue -> ( { "Type" :: (GeoMatchConstraintType) , "Value" :: (GeoMatchConstraintValue) } -> {"Type" :: (GeoMatchConstraintType) , "Value" :: (GeoMatchConstraintValue) } ) -> GeoMatchConstraint
newGeoMatchConstraint' _Type _Value customize = (GeoMatchConstraint <<< customize) { "Type": _Type, "Value": _Value }



newtype GeoMatchConstraintType = GeoMatchConstraintType String
derive instance newtypeGeoMatchConstraintType :: Newtype GeoMatchConstraintType _
derive instance repGenericGeoMatchConstraintType :: Generic GeoMatchConstraintType _
instance showGeoMatchConstraintType :: Show GeoMatchConstraintType where show = genericShow
instance decodeGeoMatchConstraintType :: Decode GeoMatchConstraintType where decode = genericDecode options
instance encodeGeoMatchConstraintType :: Encode GeoMatchConstraintType where encode = genericEncode options



newtype GeoMatchConstraintValue = GeoMatchConstraintValue String
derive instance newtypeGeoMatchConstraintValue :: Newtype GeoMatchConstraintValue _
derive instance repGenericGeoMatchConstraintValue :: Generic GeoMatchConstraintValue _
instance showGeoMatchConstraintValue :: Show GeoMatchConstraintValue where show = genericShow
instance decodeGeoMatchConstraintValue :: Decode GeoMatchConstraintValue where decode = genericDecode options
instance encodeGeoMatchConstraintValue :: Encode GeoMatchConstraintValue where encode = genericEncode options



newtype GeoMatchConstraints = GeoMatchConstraints (Array GeoMatchConstraint)
derive instance newtypeGeoMatchConstraints :: Newtype GeoMatchConstraints _
derive instance repGenericGeoMatchConstraints :: Generic GeoMatchConstraints _
instance showGeoMatchConstraints :: Show GeoMatchConstraints where show = genericShow
instance decodeGeoMatchConstraints :: Decode GeoMatchConstraints where decode = genericDecode options
instance encodeGeoMatchConstraints :: Encode GeoMatchConstraints where encode = genericEncode options



-- | <p>Contains one or more countries that AWS WAF will search for.</p>
newtype GeoMatchSet = GeoMatchSet 
  { "GeoMatchSetId" :: (ResourceId)
  , "Name" :: Maybe (ResourceName)
  , "GeoMatchConstraints" :: (GeoMatchConstraints)
  }
derive instance newtypeGeoMatchSet :: Newtype GeoMatchSet _
derive instance repGenericGeoMatchSet :: Generic GeoMatchSet _
instance showGeoMatchSet :: Show GeoMatchSet where show = genericShow
instance decodeGeoMatchSet :: Decode GeoMatchSet where decode = genericDecode options
instance encodeGeoMatchSet :: Encode GeoMatchSet where encode = genericEncode options

-- | Constructs GeoMatchSet from required parameters
newGeoMatchSet :: GeoMatchConstraints -> ResourceId -> GeoMatchSet
newGeoMatchSet _GeoMatchConstraints _GeoMatchSetId = GeoMatchSet { "GeoMatchConstraints": _GeoMatchConstraints, "GeoMatchSetId": _GeoMatchSetId, "Name": Nothing }

-- | Constructs GeoMatchSet's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGeoMatchSet' :: GeoMatchConstraints -> ResourceId -> ( { "GeoMatchSetId" :: (ResourceId) , "Name" :: Maybe (ResourceName) , "GeoMatchConstraints" :: (GeoMatchConstraints) } -> {"GeoMatchSetId" :: (ResourceId) , "Name" :: Maybe (ResourceName) , "GeoMatchConstraints" :: (GeoMatchConstraints) } ) -> GeoMatchSet
newGeoMatchSet' _GeoMatchConstraints _GeoMatchSetId customize = (GeoMatchSet <<< customize) { "GeoMatchConstraints": _GeoMatchConstraints, "GeoMatchSetId": _GeoMatchSetId, "Name": Nothing }



newtype GeoMatchSetSummaries = GeoMatchSetSummaries (Array GeoMatchSetSummary)
derive instance newtypeGeoMatchSetSummaries :: Newtype GeoMatchSetSummaries _
derive instance repGenericGeoMatchSetSummaries :: Generic GeoMatchSetSummaries _
instance showGeoMatchSetSummaries :: Show GeoMatchSetSummaries where show = genericShow
instance decodeGeoMatchSetSummaries :: Decode GeoMatchSetSummaries where decode = genericDecode options
instance encodeGeoMatchSetSummaries :: Encode GeoMatchSetSummaries where encode = genericEncode options



-- | <p>Contains the identifier and the name of the <code>GeoMatchSet</code>.</p>
newtype GeoMatchSetSummary = GeoMatchSetSummary 
  { "GeoMatchSetId" :: (ResourceId)
  , "Name" :: (ResourceName)
  }
derive instance newtypeGeoMatchSetSummary :: Newtype GeoMatchSetSummary _
derive instance repGenericGeoMatchSetSummary :: Generic GeoMatchSetSummary _
instance showGeoMatchSetSummary :: Show GeoMatchSetSummary where show = genericShow
instance decodeGeoMatchSetSummary :: Decode GeoMatchSetSummary where decode = genericDecode options
instance encodeGeoMatchSetSummary :: Encode GeoMatchSetSummary where encode = genericEncode options

-- | Constructs GeoMatchSetSummary from required parameters
newGeoMatchSetSummary :: ResourceId -> ResourceName -> GeoMatchSetSummary
newGeoMatchSetSummary _GeoMatchSetId _Name = GeoMatchSetSummary { "GeoMatchSetId": _GeoMatchSetId, "Name": _Name }

-- | Constructs GeoMatchSetSummary's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGeoMatchSetSummary' :: ResourceId -> ResourceName -> ( { "GeoMatchSetId" :: (ResourceId) , "Name" :: (ResourceName) } -> {"GeoMatchSetId" :: (ResourceId) , "Name" :: (ResourceName) } ) -> GeoMatchSetSummary
newGeoMatchSetSummary' _GeoMatchSetId _Name customize = (GeoMatchSetSummary <<< customize) { "GeoMatchSetId": _GeoMatchSetId, "Name": _Name }



-- | <p>Specifies the type of update to perform to an <a>GeoMatchSet</a> with <a>UpdateGeoMatchSet</a>.</p>
newtype GeoMatchSetUpdate = GeoMatchSetUpdate 
  { "Action" :: (ChangeAction)
  , "GeoMatchConstraint" :: (GeoMatchConstraint)
  }
derive instance newtypeGeoMatchSetUpdate :: Newtype GeoMatchSetUpdate _
derive instance repGenericGeoMatchSetUpdate :: Generic GeoMatchSetUpdate _
instance showGeoMatchSetUpdate :: Show GeoMatchSetUpdate where show = genericShow
instance decodeGeoMatchSetUpdate :: Decode GeoMatchSetUpdate where decode = genericDecode options
instance encodeGeoMatchSetUpdate :: Encode GeoMatchSetUpdate where encode = genericEncode options

-- | Constructs GeoMatchSetUpdate from required parameters
newGeoMatchSetUpdate :: ChangeAction -> GeoMatchConstraint -> GeoMatchSetUpdate
newGeoMatchSetUpdate _Action _GeoMatchConstraint = GeoMatchSetUpdate { "Action": _Action, "GeoMatchConstraint": _GeoMatchConstraint }

-- | Constructs GeoMatchSetUpdate's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGeoMatchSetUpdate' :: ChangeAction -> GeoMatchConstraint -> ( { "Action" :: (ChangeAction) , "GeoMatchConstraint" :: (GeoMatchConstraint) } -> {"Action" :: (ChangeAction) , "GeoMatchConstraint" :: (GeoMatchConstraint) } ) -> GeoMatchSetUpdate
newGeoMatchSetUpdate' _Action _GeoMatchConstraint customize = (GeoMatchSetUpdate <<< customize) { "Action": _Action, "GeoMatchConstraint": _GeoMatchConstraint }



newtype GeoMatchSetUpdates = GeoMatchSetUpdates (Array GeoMatchSetUpdate)
derive instance newtypeGeoMatchSetUpdates :: Newtype GeoMatchSetUpdates _
derive instance repGenericGeoMatchSetUpdates :: Generic GeoMatchSetUpdates _
instance showGeoMatchSetUpdates :: Show GeoMatchSetUpdates where show = genericShow
instance decodeGeoMatchSetUpdates :: Decode GeoMatchSetUpdates where decode = genericDecode options
instance encodeGeoMatchSetUpdates :: Encode GeoMatchSetUpdates where encode = genericEncode options



newtype GetByteMatchSetRequest = GetByteMatchSetRequest 
  { "ByteMatchSetId" :: (ResourceId)
  }
derive instance newtypeGetByteMatchSetRequest :: Newtype GetByteMatchSetRequest _
derive instance repGenericGetByteMatchSetRequest :: Generic GetByteMatchSetRequest _
instance showGetByteMatchSetRequest :: Show GetByteMatchSetRequest where show = genericShow
instance decodeGetByteMatchSetRequest :: Decode GetByteMatchSetRequest where decode = genericDecode options
instance encodeGetByteMatchSetRequest :: Encode GetByteMatchSetRequest where encode = genericEncode options

-- | Constructs GetByteMatchSetRequest from required parameters
newGetByteMatchSetRequest :: ResourceId -> GetByteMatchSetRequest
newGetByteMatchSetRequest _ByteMatchSetId = GetByteMatchSetRequest { "ByteMatchSetId": _ByteMatchSetId }

-- | Constructs GetByteMatchSetRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetByteMatchSetRequest' :: ResourceId -> ( { "ByteMatchSetId" :: (ResourceId) } -> {"ByteMatchSetId" :: (ResourceId) } ) -> GetByteMatchSetRequest
newGetByteMatchSetRequest' _ByteMatchSetId customize = (GetByteMatchSetRequest <<< customize) { "ByteMatchSetId": _ByteMatchSetId }



newtype GetByteMatchSetResponse = GetByteMatchSetResponse 
  { "ByteMatchSet" :: Maybe (ByteMatchSet)
  }
derive instance newtypeGetByteMatchSetResponse :: Newtype GetByteMatchSetResponse _
derive instance repGenericGetByteMatchSetResponse :: Generic GetByteMatchSetResponse _
instance showGetByteMatchSetResponse :: Show GetByteMatchSetResponse where show = genericShow
instance decodeGetByteMatchSetResponse :: Decode GetByteMatchSetResponse where decode = genericDecode options
instance encodeGetByteMatchSetResponse :: Encode GetByteMatchSetResponse where encode = genericEncode options

-- | Constructs GetByteMatchSetResponse from required parameters
newGetByteMatchSetResponse :: GetByteMatchSetResponse
newGetByteMatchSetResponse  = GetByteMatchSetResponse { "ByteMatchSet": Nothing }

-- | Constructs GetByteMatchSetResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetByteMatchSetResponse' :: ( { "ByteMatchSet" :: Maybe (ByteMatchSet) } -> {"ByteMatchSet" :: Maybe (ByteMatchSet) } ) -> GetByteMatchSetResponse
newGetByteMatchSetResponse'  customize = (GetByteMatchSetResponse <<< customize) { "ByteMatchSet": Nothing }



newtype GetChangeTokenRequest = GetChangeTokenRequest Types.NoArguments
derive instance newtypeGetChangeTokenRequest :: Newtype GetChangeTokenRequest _
derive instance repGenericGetChangeTokenRequest :: Generic GetChangeTokenRequest _
instance showGetChangeTokenRequest :: Show GetChangeTokenRequest where show = genericShow
instance decodeGetChangeTokenRequest :: Decode GetChangeTokenRequest where decode = genericDecode options
instance encodeGetChangeTokenRequest :: Encode GetChangeTokenRequest where encode = genericEncode options



newtype GetChangeTokenResponse = GetChangeTokenResponse 
  { "ChangeToken" :: Maybe (ChangeToken)
  }
derive instance newtypeGetChangeTokenResponse :: Newtype GetChangeTokenResponse _
derive instance repGenericGetChangeTokenResponse :: Generic GetChangeTokenResponse _
instance showGetChangeTokenResponse :: Show GetChangeTokenResponse where show = genericShow
instance decodeGetChangeTokenResponse :: Decode GetChangeTokenResponse where decode = genericDecode options
instance encodeGetChangeTokenResponse :: Encode GetChangeTokenResponse where encode = genericEncode options

-- | Constructs GetChangeTokenResponse from required parameters
newGetChangeTokenResponse :: GetChangeTokenResponse
newGetChangeTokenResponse  = GetChangeTokenResponse { "ChangeToken": Nothing }

-- | Constructs GetChangeTokenResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetChangeTokenResponse' :: ( { "ChangeToken" :: Maybe (ChangeToken) } -> {"ChangeToken" :: Maybe (ChangeToken) } ) -> GetChangeTokenResponse
newGetChangeTokenResponse'  customize = (GetChangeTokenResponse <<< customize) { "ChangeToken": Nothing }



newtype GetChangeTokenStatusRequest = GetChangeTokenStatusRequest 
  { "ChangeToken" :: (ChangeToken)
  }
derive instance newtypeGetChangeTokenStatusRequest :: Newtype GetChangeTokenStatusRequest _
derive instance repGenericGetChangeTokenStatusRequest :: Generic GetChangeTokenStatusRequest _
instance showGetChangeTokenStatusRequest :: Show GetChangeTokenStatusRequest where show = genericShow
instance decodeGetChangeTokenStatusRequest :: Decode GetChangeTokenStatusRequest where decode = genericDecode options
instance encodeGetChangeTokenStatusRequest :: Encode GetChangeTokenStatusRequest where encode = genericEncode options

-- | Constructs GetChangeTokenStatusRequest from required parameters
newGetChangeTokenStatusRequest :: ChangeToken -> GetChangeTokenStatusRequest
newGetChangeTokenStatusRequest _ChangeToken = GetChangeTokenStatusRequest { "ChangeToken": _ChangeToken }

-- | Constructs GetChangeTokenStatusRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetChangeTokenStatusRequest' :: ChangeToken -> ( { "ChangeToken" :: (ChangeToken) } -> {"ChangeToken" :: (ChangeToken) } ) -> GetChangeTokenStatusRequest
newGetChangeTokenStatusRequest' _ChangeToken customize = (GetChangeTokenStatusRequest <<< customize) { "ChangeToken": _ChangeToken }



newtype GetChangeTokenStatusResponse = GetChangeTokenStatusResponse 
  { "ChangeTokenStatus" :: Maybe (ChangeTokenStatus)
  }
derive instance newtypeGetChangeTokenStatusResponse :: Newtype GetChangeTokenStatusResponse _
derive instance repGenericGetChangeTokenStatusResponse :: Generic GetChangeTokenStatusResponse _
instance showGetChangeTokenStatusResponse :: Show GetChangeTokenStatusResponse where show = genericShow
instance decodeGetChangeTokenStatusResponse :: Decode GetChangeTokenStatusResponse where decode = genericDecode options
instance encodeGetChangeTokenStatusResponse :: Encode GetChangeTokenStatusResponse where encode = genericEncode options

-- | Constructs GetChangeTokenStatusResponse from required parameters
newGetChangeTokenStatusResponse :: GetChangeTokenStatusResponse
newGetChangeTokenStatusResponse  = GetChangeTokenStatusResponse { "ChangeTokenStatus": Nothing }

-- | Constructs GetChangeTokenStatusResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetChangeTokenStatusResponse' :: ( { "ChangeTokenStatus" :: Maybe (ChangeTokenStatus) } -> {"ChangeTokenStatus" :: Maybe (ChangeTokenStatus) } ) -> GetChangeTokenStatusResponse
newGetChangeTokenStatusResponse'  customize = (GetChangeTokenStatusResponse <<< customize) { "ChangeTokenStatus": Nothing }



newtype GetGeoMatchSetRequest = GetGeoMatchSetRequest 
  { "GeoMatchSetId" :: (ResourceId)
  }
derive instance newtypeGetGeoMatchSetRequest :: Newtype GetGeoMatchSetRequest _
derive instance repGenericGetGeoMatchSetRequest :: Generic GetGeoMatchSetRequest _
instance showGetGeoMatchSetRequest :: Show GetGeoMatchSetRequest where show = genericShow
instance decodeGetGeoMatchSetRequest :: Decode GetGeoMatchSetRequest where decode = genericDecode options
instance encodeGetGeoMatchSetRequest :: Encode GetGeoMatchSetRequest where encode = genericEncode options

-- | Constructs GetGeoMatchSetRequest from required parameters
newGetGeoMatchSetRequest :: ResourceId -> GetGeoMatchSetRequest
newGetGeoMatchSetRequest _GeoMatchSetId = GetGeoMatchSetRequest { "GeoMatchSetId": _GeoMatchSetId }

-- | Constructs GetGeoMatchSetRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetGeoMatchSetRequest' :: ResourceId -> ( { "GeoMatchSetId" :: (ResourceId) } -> {"GeoMatchSetId" :: (ResourceId) } ) -> GetGeoMatchSetRequest
newGetGeoMatchSetRequest' _GeoMatchSetId customize = (GetGeoMatchSetRequest <<< customize) { "GeoMatchSetId": _GeoMatchSetId }



newtype GetGeoMatchSetResponse = GetGeoMatchSetResponse 
  { "GeoMatchSet" :: Maybe (GeoMatchSet)
  }
derive instance newtypeGetGeoMatchSetResponse :: Newtype GetGeoMatchSetResponse _
derive instance repGenericGetGeoMatchSetResponse :: Generic GetGeoMatchSetResponse _
instance showGetGeoMatchSetResponse :: Show GetGeoMatchSetResponse where show = genericShow
instance decodeGetGeoMatchSetResponse :: Decode GetGeoMatchSetResponse where decode = genericDecode options
instance encodeGetGeoMatchSetResponse :: Encode GetGeoMatchSetResponse where encode = genericEncode options

-- | Constructs GetGeoMatchSetResponse from required parameters
newGetGeoMatchSetResponse :: GetGeoMatchSetResponse
newGetGeoMatchSetResponse  = GetGeoMatchSetResponse { "GeoMatchSet": Nothing }

-- | Constructs GetGeoMatchSetResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetGeoMatchSetResponse' :: ( { "GeoMatchSet" :: Maybe (GeoMatchSet) } -> {"GeoMatchSet" :: Maybe (GeoMatchSet) } ) -> GetGeoMatchSetResponse
newGetGeoMatchSetResponse'  customize = (GetGeoMatchSetResponse <<< customize) { "GeoMatchSet": Nothing }



newtype GetIPSetRequest = GetIPSetRequest 
  { "IPSetId" :: (ResourceId)
  }
derive instance newtypeGetIPSetRequest :: Newtype GetIPSetRequest _
derive instance repGenericGetIPSetRequest :: Generic GetIPSetRequest _
instance showGetIPSetRequest :: Show GetIPSetRequest where show = genericShow
instance decodeGetIPSetRequest :: Decode GetIPSetRequest where decode = genericDecode options
instance encodeGetIPSetRequest :: Encode GetIPSetRequest where encode = genericEncode options

-- | Constructs GetIPSetRequest from required parameters
newGetIPSetRequest :: ResourceId -> GetIPSetRequest
newGetIPSetRequest _IPSetId = GetIPSetRequest { "IPSetId": _IPSetId }

-- | Constructs GetIPSetRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetIPSetRequest' :: ResourceId -> ( { "IPSetId" :: (ResourceId) } -> {"IPSetId" :: (ResourceId) } ) -> GetIPSetRequest
newGetIPSetRequest' _IPSetId customize = (GetIPSetRequest <<< customize) { "IPSetId": _IPSetId }



newtype GetIPSetResponse = GetIPSetResponse 
  { "IPSet" :: Maybe (IPSet)
  }
derive instance newtypeGetIPSetResponse :: Newtype GetIPSetResponse _
derive instance repGenericGetIPSetResponse :: Generic GetIPSetResponse _
instance showGetIPSetResponse :: Show GetIPSetResponse where show = genericShow
instance decodeGetIPSetResponse :: Decode GetIPSetResponse where decode = genericDecode options
instance encodeGetIPSetResponse :: Encode GetIPSetResponse where encode = genericEncode options

-- | Constructs GetIPSetResponse from required parameters
newGetIPSetResponse :: GetIPSetResponse
newGetIPSetResponse  = GetIPSetResponse { "IPSet": Nothing }

-- | Constructs GetIPSetResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetIPSetResponse' :: ( { "IPSet" :: Maybe (IPSet) } -> {"IPSet" :: Maybe (IPSet) } ) -> GetIPSetResponse
newGetIPSetResponse'  customize = (GetIPSetResponse <<< customize) { "IPSet": Nothing }



newtype GetPermissionPolicyRequest = GetPermissionPolicyRequest 
  { "ResourceArn" :: (ResourceArn)
  }
derive instance newtypeGetPermissionPolicyRequest :: Newtype GetPermissionPolicyRequest _
derive instance repGenericGetPermissionPolicyRequest :: Generic GetPermissionPolicyRequest _
instance showGetPermissionPolicyRequest :: Show GetPermissionPolicyRequest where show = genericShow
instance decodeGetPermissionPolicyRequest :: Decode GetPermissionPolicyRequest where decode = genericDecode options
instance encodeGetPermissionPolicyRequest :: Encode GetPermissionPolicyRequest where encode = genericEncode options

-- | Constructs GetPermissionPolicyRequest from required parameters
newGetPermissionPolicyRequest :: ResourceArn -> GetPermissionPolicyRequest
newGetPermissionPolicyRequest _ResourceArn = GetPermissionPolicyRequest { "ResourceArn": _ResourceArn }

-- | Constructs GetPermissionPolicyRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetPermissionPolicyRequest' :: ResourceArn -> ( { "ResourceArn" :: (ResourceArn) } -> {"ResourceArn" :: (ResourceArn) } ) -> GetPermissionPolicyRequest
newGetPermissionPolicyRequest' _ResourceArn customize = (GetPermissionPolicyRequest <<< customize) { "ResourceArn": _ResourceArn }



newtype GetPermissionPolicyResponse = GetPermissionPolicyResponse 
  { "Policy" :: Maybe (PolicyString)
  }
derive instance newtypeGetPermissionPolicyResponse :: Newtype GetPermissionPolicyResponse _
derive instance repGenericGetPermissionPolicyResponse :: Generic GetPermissionPolicyResponse _
instance showGetPermissionPolicyResponse :: Show GetPermissionPolicyResponse where show = genericShow
instance decodeGetPermissionPolicyResponse :: Decode GetPermissionPolicyResponse where decode = genericDecode options
instance encodeGetPermissionPolicyResponse :: Encode GetPermissionPolicyResponse where encode = genericEncode options

-- | Constructs GetPermissionPolicyResponse from required parameters
newGetPermissionPolicyResponse :: GetPermissionPolicyResponse
newGetPermissionPolicyResponse  = GetPermissionPolicyResponse { "Policy": Nothing }

-- | Constructs GetPermissionPolicyResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetPermissionPolicyResponse' :: ( { "Policy" :: Maybe (PolicyString) } -> {"Policy" :: Maybe (PolicyString) } ) -> GetPermissionPolicyResponse
newGetPermissionPolicyResponse'  customize = (GetPermissionPolicyResponse <<< customize) { "Policy": Nothing }



newtype GetRateBasedRuleManagedKeysRequest = GetRateBasedRuleManagedKeysRequest 
  { "RuleId" :: (ResourceId)
  , "NextMarker" :: Maybe (NextMarker)
  }
derive instance newtypeGetRateBasedRuleManagedKeysRequest :: Newtype GetRateBasedRuleManagedKeysRequest _
derive instance repGenericGetRateBasedRuleManagedKeysRequest :: Generic GetRateBasedRuleManagedKeysRequest _
instance showGetRateBasedRuleManagedKeysRequest :: Show GetRateBasedRuleManagedKeysRequest where show = genericShow
instance decodeGetRateBasedRuleManagedKeysRequest :: Decode GetRateBasedRuleManagedKeysRequest where decode = genericDecode options
instance encodeGetRateBasedRuleManagedKeysRequest :: Encode GetRateBasedRuleManagedKeysRequest where encode = genericEncode options

-- | Constructs GetRateBasedRuleManagedKeysRequest from required parameters
newGetRateBasedRuleManagedKeysRequest :: ResourceId -> GetRateBasedRuleManagedKeysRequest
newGetRateBasedRuleManagedKeysRequest _RuleId = GetRateBasedRuleManagedKeysRequest { "RuleId": _RuleId, "NextMarker": Nothing }

-- | Constructs GetRateBasedRuleManagedKeysRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetRateBasedRuleManagedKeysRequest' :: ResourceId -> ( { "RuleId" :: (ResourceId) , "NextMarker" :: Maybe (NextMarker) } -> {"RuleId" :: (ResourceId) , "NextMarker" :: Maybe (NextMarker) } ) -> GetRateBasedRuleManagedKeysRequest
newGetRateBasedRuleManagedKeysRequest' _RuleId customize = (GetRateBasedRuleManagedKeysRequest <<< customize) { "RuleId": _RuleId, "NextMarker": Nothing }



newtype GetRateBasedRuleManagedKeysResponse = GetRateBasedRuleManagedKeysResponse 
  { "ManagedKeys" :: Maybe (ManagedKeys)
  , "NextMarker" :: Maybe (NextMarker)
  }
derive instance newtypeGetRateBasedRuleManagedKeysResponse :: Newtype GetRateBasedRuleManagedKeysResponse _
derive instance repGenericGetRateBasedRuleManagedKeysResponse :: Generic GetRateBasedRuleManagedKeysResponse _
instance showGetRateBasedRuleManagedKeysResponse :: Show GetRateBasedRuleManagedKeysResponse where show = genericShow
instance decodeGetRateBasedRuleManagedKeysResponse :: Decode GetRateBasedRuleManagedKeysResponse where decode = genericDecode options
instance encodeGetRateBasedRuleManagedKeysResponse :: Encode GetRateBasedRuleManagedKeysResponse where encode = genericEncode options

-- | Constructs GetRateBasedRuleManagedKeysResponse from required parameters
newGetRateBasedRuleManagedKeysResponse :: GetRateBasedRuleManagedKeysResponse
newGetRateBasedRuleManagedKeysResponse  = GetRateBasedRuleManagedKeysResponse { "ManagedKeys": Nothing, "NextMarker": Nothing }

-- | Constructs GetRateBasedRuleManagedKeysResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetRateBasedRuleManagedKeysResponse' :: ( { "ManagedKeys" :: Maybe (ManagedKeys) , "NextMarker" :: Maybe (NextMarker) } -> {"ManagedKeys" :: Maybe (ManagedKeys) , "NextMarker" :: Maybe (NextMarker) } ) -> GetRateBasedRuleManagedKeysResponse
newGetRateBasedRuleManagedKeysResponse'  customize = (GetRateBasedRuleManagedKeysResponse <<< customize) { "ManagedKeys": Nothing, "NextMarker": Nothing }



newtype GetRateBasedRuleRequest = GetRateBasedRuleRequest 
  { "RuleId" :: (ResourceId)
  }
derive instance newtypeGetRateBasedRuleRequest :: Newtype GetRateBasedRuleRequest _
derive instance repGenericGetRateBasedRuleRequest :: Generic GetRateBasedRuleRequest _
instance showGetRateBasedRuleRequest :: Show GetRateBasedRuleRequest where show = genericShow
instance decodeGetRateBasedRuleRequest :: Decode GetRateBasedRuleRequest where decode = genericDecode options
instance encodeGetRateBasedRuleRequest :: Encode GetRateBasedRuleRequest where encode = genericEncode options

-- | Constructs GetRateBasedRuleRequest from required parameters
newGetRateBasedRuleRequest :: ResourceId -> GetRateBasedRuleRequest
newGetRateBasedRuleRequest _RuleId = GetRateBasedRuleRequest { "RuleId": _RuleId }

-- | Constructs GetRateBasedRuleRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetRateBasedRuleRequest' :: ResourceId -> ( { "RuleId" :: (ResourceId) } -> {"RuleId" :: (ResourceId) } ) -> GetRateBasedRuleRequest
newGetRateBasedRuleRequest' _RuleId customize = (GetRateBasedRuleRequest <<< customize) { "RuleId": _RuleId }



newtype GetRateBasedRuleResponse = GetRateBasedRuleResponse 
  { "Rule" :: Maybe (RateBasedRule)
  }
derive instance newtypeGetRateBasedRuleResponse :: Newtype GetRateBasedRuleResponse _
derive instance repGenericGetRateBasedRuleResponse :: Generic GetRateBasedRuleResponse _
instance showGetRateBasedRuleResponse :: Show GetRateBasedRuleResponse where show = genericShow
instance decodeGetRateBasedRuleResponse :: Decode GetRateBasedRuleResponse where decode = genericDecode options
instance encodeGetRateBasedRuleResponse :: Encode GetRateBasedRuleResponse where encode = genericEncode options

-- | Constructs GetRateBasedRuleResponse from required parameters
newGetRateBasedRuleResponse :: GetRateBasedRuleResponse
newGetRateBasedRuleResponse  = GetRateBasedRuleResponse { "Rule": Nothing }

-- | Constructs GetRateBasedRuleResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetRateBasedRuleResponse' :: ( { "Rule" :: Maybe (RateBasedRule) } -> {"Rule" :: Maybe (RateBasedRule) } ) -> GetRateBasedRuleResponse
newGetRateBasedRuleResponse'  customize = (GetRateBasedRuleResponse <<< customize) { "Rule": Nothing }



newtype GetRegexMatchSetRequest = GetRegexMatchSetRequest 
  { "RegexMatchSetId" :: (ResourceId)
  }
derive instance newtypeGetRegexMatchSetRequest :: Newtype GetRegexMatchSetRequest _
derive instance repGenericGetRegexMatchSetRequest :: Generic GetRegexMatchSetRequest _
instance showGetRegexMatchSetRequest :: Show GetRegexMatchSetRequest where show = genericShow
instance decodeGetRegexMatchSetRequest :: Decode GetRegexMatchSetRequest where decode = genericDecode options
instance encodeGetRegexMatchSetRequest :: Encode GetRegexMatchSetRequest where encode = genericEncode options

-- | Constructs GetRegexMatchSetRequest from required parameters
newGetRegexMatchSetRequest :: ResourceId -> GetRegexMatchSetRequest
newGetRegexMatchSetRequest _RegexMatchSetId = GetRegexMatchSetRequest { "RegexMatchSetId": _RegexMatchSetId }

-- | Constructs GetRegexMatchSetRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetRegexMatchSetRequest' :: ResourceId -> ( { "RegexMatchSetId" :: (ResourceId) } -> {"RegexMatchSetId" :: (ResourceId) } ) -> GetRegexMatchSetRequest
newGetRegexMatchSetRequest' _RegexMatchSetId customize = (GetRegexMatchSetRequest <<< customize) { "RegexMatchSetId": _RegexMatchSetId }



newtype GetRegexMatchSetResponse = GetRegexMatchSetResponse 
  { "RegexMatchSet" :: Maybe (RegexMatchSet)
  }
derive instance newtypeGetRegexMatchSetResponse :: Newtype GetRegexMatchSetResponse _
derive instance repGenericGetRegexMatchSetResponse :: Generic GetRegexMatchSetResponse _
instance showGetRegexMatchSetResponse :: Show GetRegexMatchSetResponse where show = genericShow
instance decodeGetRegexMatchSetResponse :: Decode GetRegexMatchSetResponse where decode = genericDecode options
instance encodeGetRegexMatchSetResponse :: Encode GetRegexMatchSetResponse where encode = genericEncode options

-- | Constructs GetRegexMatchSetResponse from required parameters
newGetRegexMatchSetResponse :: GetRegexMatchSetResponse
newGetRegexMatchSetResponse  = GetRegexMatchSetResponse { "RegexMatchSet": Nothing }

-- | Constructs GetRegexMatchSetResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetRegexMatchSetResponse' :: ( { "RegexMatchSet" :: Maybe (RegexMatchSet) } -> {"RegexMatchSet" :: Maybe (RegexMatchSet) } ) -> GetRegexMatchSetResponse
newGetRegexMatchSetResponse'  customize = (GetRegexMatchSetResponse <<< customize) { "RegexMatchSet": Nothing }



newtype GetRegexPatternSetRequest = GetRegexPatternSetRequest 
  { "RegexPatternSetId" :: (ResourceId)
  }
derive instance newtypeGetRegexPatternSetRequest :: Newtype GetRegexPatternSetRequest _
derive instance repGenericGetRegexPatternSetRequest :: Generic GetRegexPatternSetRequest _
instance showGetRegexPatternSetRequest :: Show GetRegexPatternSetRequest where show = genericShow
instance decodeGetRegexPatternSetRequest :: Decode GetRegexPatternSetRequest where decode = genericDecode options
instance encodeGetRegexPatternSetRequest :: Encode GetRegexPatternSetRequest where encode = genericEncode options

-- | Constructs GetRegexPatternSetRequest from required parameters
newGetRegexPatternSetRequest :: ResourceId -> GetRegexPatternSetRequest
newGetRegexPatternSetRequest _RegexPatternSetId = GetRegexPatternSetRequest { "RegexPatternSetId": _RegexPatternSetId }

-- | Constructs GetRegexPatternSetRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetRegexPatternSetRequest' :: ResourceId -> ( { "RegexPatternSetId" :: (ResourceId) } -> {"RegexPatternSetId" :: (ResourceId) } ) -> GetRegexPatternSetRequest
newGetRegexPatternSetRequest' _RegexPatternSetId customize = (GetRegexPatternSetRequest <<< customize) { "RegexPatternSetId": _RegexPatternSetId }



newtype GetRegexPatternSetResponse = GetRegexPatternSetResponse 
  { "RegexPatternSet" :: Maybe (RegexPatternSet)
  }
derive instance newtypeGetRegexPatternSetResponse :: Newtype GetRegexPatternSetResponse _
derive instance repGenericGetRegexPatternSetResponse :: Generic GetRegexPatternSetResponse _
instance showGetRegexPatternSetResponse :: Show GetRegexPatternSetResponse where show = genericShow
instance decodeGetRegexPatternSetResponse :: Decode GetRegexPatternSetResponse where decode = genericDecode options
instance encodeGetRegexPatternSetResponse :: Encode GetRegexPatternSetResponse where encode = genericEncode options

-- | Constructs GetRegexPatternSetResponse from required parameters
newGetRegexPatternSetResponse :: GetRegexPatternSetResponse
newGetRegexPatternSetResponse  = GetRegexPatternSetResponse { "RegexPatternSet": Nothing }

-- | Constructs GetRegexPatternSetResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetRegexPatternSetResponse' :: ( { "RegexPatternSet" :: Maybe (RegexPatternSet) } -> {"RegexPatternSet" :: Maybe (RegexPatternSet) } ) -> GetRegexPatternSetResponse
newGetRegexPatternSetResponse'  customize = (GetRegexPatternSetResponse <<< customize) { "RegexPatternSet": Nothing }



newtype GetRuleGroupRequest = GetRuleGroupRequest 
  { "RuleGroupId" :: (ResourceId)
  }
derive instance newtypeGetRuleGroupRequest :: Newtype GetRuleGroupRequest _
derive instance repGenericGetRuleGroupRequest :: Generic GetRuleGroupRequest _
instance showGetRuleGroupRequest :: Show GetRuleGroupRequest where show = genericShow
instance decodeGetRuleGroupRequest :: Decode GetRuleGroupRequest where decode = genericDecode options
instance encodeGetRuleGroupRequest :: Encode GetRuleGroupRequest where encode = genericEncode options

-- | Constructs GetRuleGroupRequest from required parameters
newGetRuleGroupRequest :: ResourceId -> GetRuleGroupRequest
newGetRuleGroupRequest _RuleGroupId = GetRuleGroupRequest { "RuleGroupId": _RuleGroupId }

-- | Constructs GetRuleGroupRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetRuleGroupRequest' :: ResourceId -> ( { "RuleGroupId" :: (ResourceId) } -> {"RuleGroupId" :: (ResourceId) } ) -> GetRuleGroupRequest
newGetRuleGroupRequest' _RuleGroupId customize = (GetRuleGroupRequest <<< customize) { "RuleGroupId": _RuleGroupId }



newtype GetRuleGroupResponse = GetRuleGroupResponse 
  { "RuleGroup" :: Maybe (RuleGroup)
  }
derive instance newtypeGetRuleGroupResponse :: Newtype GetRuleGroupResponse _
derive instance repGenericGetRuleGroupResponse :: Generic GetRuleGroupResponse _
instance showGetRuleGroupResponse :: Show GetRuleGroupResponse where show = genericShow
instance decodeGetRuleGroupResponse :: Decode GetRuleGroupResponse where decode = genericDecode options
instance encodeGetRuleGroupResponse :: Encode GetRuleGroupResponse where encode = genericEncode options

-- | Constructs GetRuleGroupResponse from required parameters
newGetRuleGroupResponse :: GetRuleGroupResponse
newGetRuleGroupResponse  = GetRuleGroupResponse { "RuleGroup": Nothing }

-- | Constructs GetRuleGroupResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetRuleGroupResponse' :: ( { "RuleGroup" :: Maybe (RuleGroup) } -> {"RuleGroup" :: Maybe (RuleGroup) } ) -> GetRuleGroupResponse
newGetRuleGroupResponse'  customize = (GetRuleGroupResponse <<< customize) { "RuleGroup": Nothing }



newtype GetRuleRequest = GetRuleRequest 
  { "RuleId" :: (ResourceId)
  }
derive instance newtypeGetRuleRequest :: Newtype GetRuleRequest _
derive instance repGenericGetRuleRequest :: Generic GetRuleRequest _
instance showGetRuleRequest :: Show GetRuleRequest where show = genericShow
instance decodeGetRuleRequest :: Decode GetRuleRequest where decode = genericDecode options
instance encodeGetRuleRequest :: Encode GetRuleRequest where encode = genericEncode options

-- | Constructs GetRuleRequest from required parameters
newGetRuleRequest :: ResourceId -> GetRuleRequest
newGetRuleRequest _RuleId = GetRuleRequest { "RuleId": _RuleId }

-- | Constructs GetRuleRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetRuleRequest' :: ResourceId -> ( { "RuleId" :: (ResourceId) } -> {"RuleId" :: (ResourceId) } ) -> GetRuleRequest
newGetRuleRequest' _RuleId customize = (GetRuleRequest <<< customize) { "RuleId": _RuleId }



newtype GetRuleResponse = GetRuleResponse 
  { "Rule" :: Maybe (Rule)
  }
derive instance newtypeGetRuleResponse :: Newtype GetRuleResponse _
derive instance repGenericGetRuleResponse :: Generic GetRuleResponse _
instance showGetRuleResponse :: Show GetRuleResponse where show = genericShow
instance decodeGetRuleResponse :: Decode GetRuleResponse where decode = genericDecode options
instance encodeGetRuleResponse :: Encode GetRuleResponse where encode = genericEncode options

-- | Constructs GetRuleResponse from required parameters
newGetRuleResponse :: GetRuleResponse
newGetRuleResponse  = GetRuleResponse { "Rule": Nothing }

-- | Constructs GetRuleResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetRuleResponse' :: ( { "Rule" :: Maybe (Rule) } -> {"Rule" :: Maybe (Rule) } ) -> GetRuleResponse
newGetRuleResponse'  customize = (GetRuleResponse <<< customize) { "Rule": Nothing }



newtype GetSampledRequestsMaxItems = GetSampledRequestsMaxItems Number
derive instance newtypeGetSampledRequestsMaxItems :: Newtype GetSampledRequestsMaxItems _
derive instance repGenericGetSampledRequestsMaxItems :: Generic GetSampledRequestsMaxItems _
instance showGetSampledRequestsMaxItems :: Show GetSampledRequestsMaxItems where show = genericShow
instance decodeGetSampledRequestsMaxItems :: Decode GetSampledRequestsMaxItems where decode = genericDecode options
instance encodeGetSampledRequestsMaxItems :: Encode GetSampledRequestsMaxItems where encode = genericEncode options



newtype GetSampledRequestsRequest = GetSampledRequestsRequest 
  { "WebAclId" :: (ResourceId)
  , "RuleId" :: (ResourceId)
  , "TimeWindow" :: (TimeWindow)
  , "MaxItems" :: (GetSampledRequestsMaxItems)
  }
derive instance newtypeGetSampledRequestsRequest :: Newtype GetSampledRequestsRequest _
derive instance repGenericGetSampledRequestsRequest :: Generic GetSampledRequestsRequest _
instance showGetSampledRequestsRequest :: Show GetSampledRequestsRequest where show = genericShow
instance decodeGetSampledRequestsRequest :: Decode GetSampledRequestsRequest where decode = genericDecode options
instance encodeGetSampledRequestsRequest :: Encode GetSampledRequestsRequest where encode = genericEncode options

-- | Constructs GetSampledRequestsRequest from required parameters
newGetSampledRequestsRequest :: GetSampledRequestsMaxItems -> ResourceId -> TimeWindow -> ResourceId -> GetSampledRequestsRequest
newGetSampledRequestsRequest _MaxItems _RuleId _TimeWindow _WebAclId = GetSampledRequestsRequest { "MaxItems": _MaxItems, "RuleId": _RuleId, "TimeWindow": _TimeWindow, "WebAclId": _WebAclId }

-- | Constructs GetSampledRequestsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetSampledRequestsRequest' :: GetSampledRequestsMaxItems -> ResourceId -> TimeWindow -> ResourceId -> ( { "WebAclId" :: (ResourceId) , "RuleId" :: (ResourceId) , "TimeWindow" :: (TimeWindow) , "MaxItems" :: (GetSampledRequestsMaxItems) } -> {"WebAclId" :: (ResourceId) , "RuleId" :: (ResourceId) , "TimeWindow" :: (TimeWindow) , "MaxItems" :: (GetSampledRequestsMaxItems) } ) -> GetSampledRequestsRequest
newGetSampledRequestsRequest' _MaxItems _RuleId _TimeWindow _WebAclId customize = (GetSampledRequestsRequest <<< customize) { "MaxItems": _MaxItems, "RuleId": _RuleId, "TimeWindow": _TimeWindow, "WebAclId": _WebAclId }



newtype GetSampledRequestsResponse = GetSampledRequestsResponse 
  { "SampledRequests" :: Maybe (SampledHTTPRequests)
  , "PopulationSize" :: Maybe (PopulationSize)
  , "TimeWindow" :: Maybe (TimeWindow)
  }
derive instance newtypeGetSampledRequestsResponse :: Newtype GetSampledRequestsResponse _
derive instance repGenericGetSampledRequestsResponse :: Generic GetSampledRequestsResponse _
instance showGetSampledRequestsResponse :: Show GetSampledRequestsResponse where show = genericShow
instance decodeGetSampledRequestsResponse :: Decode GetSampledRequestsResponse where decode = genericDecode options
instance encodeGetSampledRequestsResponse :: Encode GetSampledRequestsResponse where encode = genericEncode options

-- | Constructs GetSampledRequestsResponse from required parameters
newGetSampledRequestsResponse :: GetSampledRequestsResponse
newGetSampledRequestsResponse  = GetSampledRequestsResponse { "PopulationSize": Nothing, "SampledRequests": Nothing, "TimeWindow": Nothing }

-- | Constructs GetSampledRequestsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetSampledRequestsResponse' :: ( { "SampledRequests" :: Maybe (SampledHTTPRequests) , "PopulationSize" :: Maybe (PopulationSize) , "TimeWindow" :: Maybe (TimeWindow) } -> {"SampledRequests" :: Maybe (SampledHTTPRequests) , "PopulationSize" :: Maybe (PopulationSize) , "TimeWindow" :: Maybe (TimeWindow) } ) -> GetSampledRequestsResponse
newGetSampledRequestsResponse'  customize = (GetSampledRequestsResponse <<< customize) { "PopulationSize": Nothing, "SampledRequests": Nothing, "TimeWindow": Nothing }



newtype GetSizeConstraintSetRequest = GetSizeConstraintSetRequest 
  { "SizeConstraintSetId" :: (ResourceId)
  }
derive instance newtypeGetSizeConstraintSetRequest :: Newtype GetSizeConstraintSetRequest _
derive instance repGenericGetSizeConstraintSetRequest :: Generic GetSizeConstraintSetRequest _
instance showGetSizeConstraintSetRequest :: Show GetSizeConstraintSetRequest where show = genericShow
instance decodeGetSizeConstraintSetRequest :: Decode GetSizeConstraintSetRequest where decode = genericDecode options
instance encodeGetSizeConstraintSetRequest :: Encode GetSizeConstraintSetRequest where encode = genericEncode options

-- | Constructs GetSizeConstraintSetRequest from required parameters
newGetSizeConstraintSetRequest :: ResourceId -> GetSizeConstraintSetRequest
newGetSizeConstraintSetRequest _SizeConstraintSetId = GetSizeConstraintSetRequest { "SizeConstraintSetId": _SizeConstraintSetId }

-- | Constructs GetSizeConstraintSetRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetSizeConstraintSetRequest' :: ResourceId -> ( { "SizeConstraintSetId" :: (ResourceId) } -> {"SizeConstraintSetId" :: (ResourceId) } ) -> GetSizeConstraintSetRequest
newGetSizeConstraintSetRequest' _SizeConstraintSetId customize = (GetSizeConstraintSetRequest <<< customize) { "SizeConstraintSetId": _SizeConstraintSetId }



newtype GetSizeConstraintSetResponse = GetSizeConstraintSetResponse 
  { "SizeConstraintSet" :: Maybe (SizeConstraintSet)
  }
derive instance newtypeGetSizeConstraintSetResponse :: Newtype GetSizeConstraintSetResponse _
derive instance repGenericGetSizeConstraintSetResponse :: Generic GetSizeConstraintSetResponse _
instance showGetSizeConstraintSetResponse :: Show GetSizeConstraintSetResponse where show = genericShow
instance decodeGetSizeConstraintSetResponse :: Decode GetSizeConstraintSetResponse where decode = genericDecode options
instance encodeGetSizeConstraintSetResponse :: Encode GetSizeConstraintSetResponse where encode = genericEncode options

-- | Constructs GetSizeConstraintSetResponse from required parameters
newGetSizeConstraintSetResponse :: GetSizeConstraintSetResponse
newGetSizeConstraintSetResponse  = GetSizeConstraintSetResponse { "SizeConstraintSet": Nothing }

-- | Constructs GetSizeConstraintSetResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetSizeConstraintSetResponse' :: ( { "SizeConstraintSet" :: Maybe (SizeConstraintSet) } -> {"SizeConstraintSet" :: Maybe (SizeConstraintSet) } ) -> GetSizeConstraintSetResponse
newGetSizeConstraintSetResponse'  customize = (GetSizeConstraintSetResponse <<< customize) { "SizeConstraintSet": Nothing }



-- | <p>A request to get a <a>SqlInjectionMatchSet</a>.</p>
newtype GetSqlInjectionMatchSetRequest = GetSqlInjectionMatchSetRequest 
  { "SqlInjectionMatchSetId" :: (ResourceId)
  }
derive instance newtypeGetSqlInjectionMatchSetRequest :: Newtype GetSqlInjectionMatchSetRequest _
derive instance repGenericGetSqlInjectionMatchSetRequest :: Generic GetSqlInjectionMatchSetRequest _
instance showGetSqlInjectionMatchSetRequest :: Show GetSqlInjectionMatchSetRequest where show = genericShow
instance decodeGetSqlInjectionMatchSetRequest :: Decode GetSqlInjectionMatchSetRequest where decode = genericDecode options
instance encodeGetSqlInjectionMatchSetRequest :: Encode GetSqlInjectionMatchSetRequest where encode = genericEncode options

-- | Constructs GetSqlInjectionMatchSetRequest from required parameters
newGetSqlInjectionMatchSetRequest :: ResourceId -> GetSqlInjectionMatchSetRequest
newGetSqlInjectionMatchSetRequest _SqlInjectionMatchSetId = GetSqlInjectionMatchSetRequest { "SqlInjectionMatchSetId": _SqlInjectionMatchSetId }

-- | Constructs GetSqlInjectionMatchSetRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetSqlInjectionMatchSetRequest' :: ResourceId -> ( { "SqlInjectionMatchSetId" :: (ResourceId) } -> {"SqlInjectionMatchSetId" :: (ResourceId) } ) -> GetSqlInjectionMatchSetRequest
newGetSqlInjectionMatchSetRequest' _SqlInjectionMatchSetId customize = (GetSqlInjectionMatchSetRequest <<< customize) { "SqlInjectionMatchSetId": _SqlInjectionMatchSetId }



-- | <p>The response to a <a>GetSqlInjectionMatchSet</a> request.</p>
newtype GetSqlInjectionMatchSetResponse = GetSqlInjectionMatchSetResponse 
  { "SqlInjectionMatchSet" :: Maybe (SqlInjectionMatchSet)
  }
derive instance newtypeGetSqlInjectionMatchSetResponse :: Newtype GetSqlInjectionMatchSetResponse _
derive instance repGenericGetSqlInjectionMatchSetResponse :: Generic GetSqlInjectionMatchSetResponse _
instance showGetSqlInjectionMatchSetResponse :: Show GetSqlInjectionMatchSetResponse where show = genericShow
instance decodeGetSqlInjectionMatchSetResponse :: Decode GetSqlInjectionMatchSetResponse where decode = genericDecode options
instance encodeGetSqlInjectionMatchSetResponse :: Encode GetSqlInjectionMatchSetResponse where encode = genericEncode options

-- | Constructs GetSqlInjectionMatchSetResponse from required parameters
newGetSqlInjectionMatchSetResponse :: GetSqlInjectionMatchSetResponse
newGetSqlInjectionMatchSetResponse  = GetSqlInjectionMatchSetResponse { "SqlInjectionMatchSet": Nothing }

-- | Constructs GetSqlInjectionMatchSetResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetSqlInjectionMatchSetResponse' :: ( { "SqlInjectionMatchSet" :: Maybe (SqlInjectionMatchSet) } -> {"SqlInjectionMatchSet" :: Maybe (SqlInjectionMatchSet) } ) -> GetSqlInjectionMatchSetResponse
newGetSqlInjectionMatchSetResponse'  customize = (GetSqlInjectionMatchSetResponse <<< customize) { "SqlInjectionMatchSet": Nothing }



newtype GetWebACLForResourceRequest = GetWebACLForResourceRequest 
  { "ResourceArn" :: (ResourceArn)
  }
derive instance newtypeGetWebACLForResourceRequest :: Newtype GetWebACLForResourceRequest _
derive instance repGenericGetWebACLForResourceRequest :: Generic GetWebACLForResourceRequest _
instance showGetWebACLForResourceRequest :: Show GetWebACLForResourceRequest where show = genericShow
instance decodeGetWebACLForResourceRequest :: Decode GetWebACLForResourceRequest where decode = genericDecode options
instance encodeGetWebACLForResourceRequest :: Encode GetWebACLForResourceRequest where encode = genericEncode options

-- | Constructs GetWebACLForResourceRequest from required parameters
newGetWebACLForResourceRequest :: ResourceArn -> GetWebACLForResourceRequest
newGetWebACLForResourceRequest _ResourceArn = GetWebACLForResourceRequest { "ResourceArn": _ResourceArn }

-- | Constructs GetWebACLForResourceRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetWebACLForResourceRequest' :: ResourceArn -> ( { "ResourceArn" :: (ResourceArn) } -> {"ResourceArn" :: (ResourceArn) } ) -> GetWebACLForResourceRequest
newGetWebACLForResourceRequest' _ResourceArn customize = (GetWebACLForResourceRequest <<< customize) { "ResourceArn": _ResourceArn }



newtype GetWebACLForResourceResponse = GetWebACLForResourceResponse 
  { "WebACLSummary" :: Maybe (WebACLSummary)
  }
derive instance newtypeGetWebACLForResourceResponse :: Newtype GetWebACLForResourceResponse _
derive instance repGenericGetWebACLForResourceResponse :: Generic GetWebACLForResourceResponse _
instance showGetWebACLForResourceResponse :: Show GetWebACLForResourceResponse where show = genericShow
instance decodeGetWebACLForResourceResponse :: Decode GetWebACLForResourceResponse where decode = genericDecode options
instance encodeGetWebACLForResourceResponse :: Encode GetWebACLForResourceResponse where encode = genericEncode options

-- | Constructs GetWebACLForResourceResponse from required parameters
newGetWebACLForResourceResponse :: GetWebACLForResourceResponse
newGetWebACLForResourceResponse  = GetWebACLForResourceResponse { "WebACLSummary": Nothing }

-- | Constructs GetWebACLForResourceResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetWebACLForResourceResponse' :: ( { "WebACLSummary" :: Maybe (WebACLSummary) } -> {"WebACLSummary" :: Maybe (WebACLSummary) } ) -> GetWebACLForResourceResponse
newGetWebACLForResourceResponse'  customize = (GetWebACLForResourceResponse <<< customize) { "WebACLSummary": Nothing }



newtype GetWebACLRequest = GetWebACLRequest 
  { "WebACLId" :: (ResourceId)
  }
derive instance newtypeGetWebACLRequest :: Newtype GetWebACLRequest _
derive instance repGenericGetWebACLRequest :: Generic GetWebACLRequest _
instance showGetWebACLRequest :: Show GetWebACLRequest where show = genericShow
instance decodeGetWebACLRequest :: Decode GetWebACLRequest where decode = genericDecode options
instance encodeGetWebACLRequest :: Encode GetWebACLRequest where encode = genericEncode options

-- | Constructs GetWebACLRequest from required parameters
newGetWebACLRequest :: ResourceId -> GetWebACLRequest
newGetWebACLRequest _WebACLId = GetWebACLRequest { "WebACLId": _WebACLId }

-- | Constructs GetWebACLRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetWebACLRequest' :: ResourceId -> ( { "WebACLId" :: (ResourceId) } -> {"WebACLId" :: (ResourceId) } ) -> GetWebACLRequest
newGetWebACLRequest' _WebACLId customize = (GetWebACLRequest <<< customize) { "WebACLId": _WebACLId }



newtype GetWebACLResponse = GetWebACLResponse 
  { "WebACL" :: Maybe (WebACL)
  }
derive instance newtypeGetWebACLResponse :: Newtype GetWebACLResponse _
derive instance repGenericGetWebACLResponse :: Generic GetWebACLResponse _
instance showGetWebACLResponse :: Show GetWebACLResponse where show = genericShow
instance decodeGetWebACLResponse :: Decode GetWebACLResponse where decode = genericDecode options
instance encodeGetWebACLResponse :: Encode GetWebACLResponse where encode = genericEncode options

-- | Constructs GetWebACLResponse from required parameters
newGetWebACLResponse :: GetWebACLResponse
newGetWebACLResponse  = GetWebACLResponse { "WebACL": Nothing }

-- | Constructs GetWebACLResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetWebACLResponse' :: ( { "WebACL" :: Maybe (WebACL) } -> {"WebACL" :: Maybe (WebACL) } ) -> GetWebACLResponse
newGetWebACLResponse'  customize = (GetWebACLResponse <<< customize) { "WebACL": Nothing }



-- | <p>A request to get an <a>XssMatchSet</a>.</p>
newtype GetXssMatchSetRequest = GetXssMatchSetRequest 
  { "XssMatchSetId" :: (ResourceId)
  }
derive instance newtypeGetXssMatchSetRequest :: Newtype GetXssMatchSetRequest _
derive instance repGenericGetXssMatchSetRequest :: Generic GetXssMatchSetRequest _
instance showGetXssMatchSetRequest :: Show GetXssMatchSetRequest where show = genericShow
instance decodeGetXssMatchSetRequest :: Decode GetXssMatchSetRequest where decode = genericDecode options
instance encodeGetXssMatchSetRequest :: Encode GetXssMatchSetRequest where encode = genericEncode options

-- | Constructs GetXssMatchSetRequest from required parameters
newGetXssMatchSetRequest :: ResourceId -> GetXssMatchSetRequest
newGetXssMatchSetRequest _XssMatchSetId = GetXssMatchSetRequest { "XssMatchSetId": _XssMatchSetId }

-- | Constructs GetXssMatchSetRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetXssMatchSetRequest' :: ResourceId -> ( { "XssMatchSetId" :: (ResourceId) } -> {"XssMatchSetId" :: (ResourceId) } ) -> GetXssMatchSetRequest
newGetXssMatchSetRequest' _XssMatchSetId customize = (GetXssMatchSetRequest <<< customize) { "XssMatchSetId": _XssMatchSetId }



-- | <p>The response to a <a>GetXssMatchSet</a> request.</p>
newtype GetXssMatchSetResponse = GetXssMatchSetResponse 
  { "XssMatchSet" :: Maybe (XssMatchSet)
  }
derive instance newtypeGetXssMatchSetResponse :: Newtype GetXssMatchSetResponse _
derive instance repGenericGetXssMatchSetResponse :: Generic GetXssMatchSetResponse _
instance showGetXssMatchSetResponse :: Show GetXssMatchSetResponse where show = genericShow
instance decodeGetXssMatchSetResponse :: Decode GetXssMatchSetResponse where decode = genericDecode options
instance encodeGetXssMatchSetResponse :: Encode GetXssMatchSetResponse where encode = genericEncode options

-- | Constructs GetXssMatchSetResponse from required parameters
newGetXssMatchSetResponse :: GetXssMatchSetResponse
newGetXssMatchSetResponse  = GetXssMatchSetResponse { "XssMatchSet": Nothing }

-- | Constructs GetXssMatchSetResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetXssMatchSetResponse' :: ( { "XssMatchSet" :: Maybe (XssMatchSet) } -> {"XssMatchSet" :: Maybe (XssMatchSet) } ) -> GetXssMatchSetResponse
newGetXssMatchSetResponse'  customize = (GetXssMatchSetResponse <<< customize) { "XssMatchSet": Nothing }



-- | <p>The response from a <a>GetSampledRequests</a> request includes an <code>HTTPHeader</code> complex type that appears as <code>Headers</code> in the response syntax. <code>HTTPHeader</code> contains the names and values of all of the headers that appear in one of the web requests that were returned by <code>GetSampledRequests</code>. </p>
newtype HTTPHeader = HTTPHeader 
  { "Name" :: Maybe (HeaderName)
  , "Value" :: Maybe (HeaderValue)
  }
derive instance newtypeHTTPHeader :: Newtype HTTPHeader _
derive instance repGenericHTTPHeader :: Generic HTTPHeader _
instance showHTTPHeader :: Show HTTPHeader where show = genericShow
instance decodeHTTPHeader :: Decode HTTPHeader where decode = genericDecode options
instance encodeHTTPHeader :: Encode HTTPHeader where encode = genericEncode options

-- | Constructs HTTPHeader from required parameters
newHTTPHeader :: HTTPHeader
newHTTPHeader  = HTTPHeader { "Name": Nothing, "Value": Nothing }

-- | Constructs HTTPHeader's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newHTTPHeader' :: ( { "Name" :: Maybe (HeaderName) , "Value" :: Maybe (HeaderValue) } -> {"Name" :: Maybe (HeaderName) , "Value" :: Maybe (HeaderValue) } ) -> HTTPHeader
newHTTPHeader'  customize = (HTTPHeader <<< customize) { "Name": Nothing, "Value": Nothing }



newtype HTTPHeaders = HTTPHeaders (Array HTTPHeader)
derive instance newtypeHTTPHeaders :: Newtype HTTPHeaders _
derive instance repGenericHTTPHeaders :: Generic HTTPHeaders _
instance showHTTPHeaders :: Show HTTPHeaders where show = genericShow
instance decodeHTTPHeaders :: Decode HTTPHeaders where decode = genericDecode options
instance encodeHTTPHeaders :: Encode HTTPHeaders where encode = genericEncode options



newtype HTTPMethod = HTTPMethod String
derive instance newtypeHTTPMethod :: Newtype HTTPMethod _
derive instance repGenericHTTPMethod :: Generic HTTPMethod _
instance showHTTPMethod :: Show HTTPMethod where show = genericShow
instance decodeHTTPMethod :: Decode HTTPMethod where decode = genericDecode options
instance encodeHTTPMethod :: Encode HTTPMethod where encode = genericEncode options



-- | <p>The response from a <a>GetSampledRequests</a> request includes an <code>HTTPRequest</code> complex type that appears as <code>Request</code> in the response syntax. <code>HTTPRequest</code> contains information about one of the web requests that were returned by <code>GetSampledRequests</code>. </p>
newtype HTTPRequest = HTTPRequest 
  { "ClientIP" :: Maybe (IPString)
  , "Country" :: Maybe (Country)
  , "URI" :: Maybe (URIString)
  , "Method" :: Maybe (HTTPMethod)
  , "HTTPVersion" :: Maybe (HTTPVersion)
  , "Headers" :: Maybe (HTTPHeaders)
  }
derive instance newtypeHTTPRequest :: Newtype HTTPRequest _
derive instance repGenericHTTPRequest :: Generic HTTPRequest _
instance showHTTPRequest :: Show HTTPRequest where show = genericShow
instance decodeHTTPRequest :: Decode HTTPRequest where decode = genericDecode options
instance encodeHTTPRequest :: Encode HTTPRequest where encode = genericEncode options

-- | Constructs HTTPRequest from required parameters
newHTTPRequest :: HTTPRequest
newHTTPRequest  = HTTPRequest { "ClientIP": Nothing, "Country": Nothing, "HTTPVersion": Nothing, "Headers": Nothing, "Method": Nothing, "URI": Nothing }

-- | Constructs HTTPRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newHTTPRequest' :: ( { "ClientIP" :: Maybe (IPString) , "Country" :: Maybe (Country) , "URI" :: Maybe (URIString) , "Method" :: Maybe (HTTPMethod) , "HTTPVersion" :: Maybe (HTTPVersion) , "Headers" :: Maybe (HTTPHeaders) } -> {"ClientIP" :: Maybe (IPString) , "Country" :: Maybe (Country) , "URI" :: Maybe (URIString) , "Method" :: Maybe (HTTPMethod) , "HTTPVersion" :: Maybe (HTTPVersion) , "Headers" :: Maybe (HTTPHeaders) } ) -> HTTPRequest
newHTTPRequest'  customize = (HTTPRequest <<< customize) { "ClientIP": Nothing, "Country": Nothing, "HTTPVersion": Nothing, "Headers": Nothing, "Method": Nothing, "URI": Nothing }



newtype HTTPVersion = HTTPVersion String
derive instance newtypeHTTPVersion :: Newtype HTTPVersion _
derive instance repGenericHTTPVersion :: Generic HTTPVersion _
instance showHTTPVersion :: Show HTTPVersion where show = genericShow
instance decodeHTTPVersion :: Decode HTTPVersion where decode = genericDecode options
instance encodeHTTPVersion :: Encode HTTPVersion where encode = genericEncode options



newtype HeaderName = HeaderName String
derive instance newtypeHeaderName :: Newtype HeaderName _
derive instance repGenericHeaderName :: Generic HeaderName _
instance showHeaderName :: Show HeaderName where show = genericShow
instance decodeHeaderName :: Decode HeaderName where decode = genericDecode options
instance encodeHeaderName :: Encode HeaderName where encode = genericEncode options



newtype HeaderValue = HeaderValue String
derive instance newtypeHeaderValue :: Newtype HeaderValue _
derive instance repGenericHeaderValue :: Generic HeaderValue _
instance showHeaderValue :: Show HeaderValue where show = genericShow
instance decodeHeaderValue :: Decode HeaderValue where decode = genericDecode options
instance encodeHeaderValue :: Encode HeaderValue where encode = genericEncode options



-- | <p>Contains one or more IP addresses or blocks of IP addresses specified in Classless Inter-Domain Routing (CIDR) notation. AWS WAF supports /8, /16, /24, and /32 IP address ranges for IPv4, and /24, /32, /48, /56, /64 and /128 for IPv6.</p> <p>To specify an individual IP address, you specify the four-part IP address followed by a <code>/32</code>, for example, 192.0.2.0/31. To block a range of IP addresses, you can specify a <code>/128</code>, <code>/64</code>, <code>/56</code>, <code>/48</code>, <code>/32</code>, <code>/24</code>, <code>/16</code>, or <code>/8</code> CIDR. For more information about CIDR notation, see the Wikipedia entry <a href="https://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing">Classless Inter-Domain Routing</a>. </p>
newtype IPSet = IPSet 
  { "IPSetId" :: (ResourceId)
  , "Name" :: Maybe (ResourceName)
  , "IPSetDescriptors" :: (IPSetDescriptors)
  }
derive instance newtypeIPSet :: Newtype IPSet _
derive instance repGenericIPSet :: Generic IPSet _
instance showIPSet :: Show IPSet where show = genericShow
instance decodeIPSet :: Decode IPSet where decode = genericDecode options
instance encodeIPSet :: Encode IPSet where encode = genericEncode options

-- | Constructs IPSet from required parameters
newIPSet :: IPSetDescriptors -> ResourceId -> IPSet
newIPSet _IPSetDescriptors _IPSetId = IPSet { "IPSetDescriptors": _IPSetDescriptors, "IPSetId": _IPSetId, "Name": Nothing }

-- | Constructs IPSet's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newIPSet' :: IPSetDescriptors -> ResourceId -> ( { "IPSetId" :: (ResourceId) , "Name" :: Maybe (ResourceName) , "IPSetDescriptors" :: (IPSetDescriptors) } -> {"IPSetId" :: (ResourceId) , "Name" :: Maybe (ResourceName) , "IPSetDescriptors" :: (IPSetDescriptors) } ) -> IPSet
newIPSet' _IPSetDescriptors _IPSetId customize = (IPSet <<< customize) { "IPSetDescriptors": _IPSetDescriptors, "IPSetId": _IPSetId, "Name": Nothing }



-- | <p>Specifies the IP address type (<code>IPV4</code> or <code>IPV6</code>) and the IP address range (in CIDR format) that web requests originate from.</p>
newtype IPSetDescriptor = IPSetDescriptor 
  { "Type" :: (IPSetDescriptorType)
  , "Value" :: (IPSetDescriptorValue)
  }
derive instance newtypeIPSetDescriptor :: Newtype IPSetDescriptor _
derive instance repGenericIPSetDescriptor :: Generic IPSetDescriptor _
instance showIPSetDescriptor :: Show IPSetDescriptor where show = genericShow
instance decodeIPSetDescriptor :: Decode IPSetDescriptor where decode = genericDecode options
instance encodeIPSetDescriptor :: Encode IPSetDescriptor where encode = genericEncode options

-- | Constructs IPSetDescriptor from required parameters
newIPSetDescriptor :: IPSetDescriptorType -> IPSetDescriptorValue -> IPSetDescriptor
newIPSetDescriptor _Type _Value = IPSetDescriptor { "Type": _Type, "Value": _Value }

-- | Constructs IPSetDescriptor's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newIPSetDescriptor' :: IPSetDescriptorType -> IPSetDescriptorValue -> ( { "Type" :: (IPSetDescriptorType) , "Value" :: (IPSetDescriptorValue) } -> {"Type" :: (IPSetDescriptorType) , "Value" :: (IPSetDescriptorValue) } ) -> IPSetDescriptor
newIPSetDescriptor' _Type _Value customize = (IPSetDescriptor <<< customize) { "Type": _Type, "Value": _Value }



newtype IPSetDescriptorType = IPSetDescriptorType String
derive instance newtypeIPSetDescriptorType :: Newtype IPSetDescriptorType _
derive instance repGenericIPSetDescriptorType :: Generic IPSetDescriptorType _
instance showIPSetDescriptorType :: Show IPSetDescriptorType where show = genericShow
instance decodeIPSetDescriptorType :: Decode IPSetDescriptorType where decode = genericDecode options
instance encodeIPSetDescriptorType :: Encode IPSetDescriptorType where encode = genericEncode options



newtype IPSetDescriptorValue = IPSetDescriptorValue String
derive instance newtypeIPSetDescriptorValue :: Newtype IPSetDescriptorValue _
derive instance repGenericIPSetDescriptorValue :: Generic IPSetDescriptorValue _
instance showIPSetDescriptorValue :: Show IPSetDescriptorValue where show = genericShow
instance decodeIPSetDescriptorValue :: Decode IPSetDescriptorValue where decode = genericDecode options
instance encodeIPSetDescriptorValue :: Encode IPSetDescriptorValue where encode = genericEncode options



newtype IPSetDescriptors = IPSetDescriptors (Array IPSetDescriptor)
derive instance newtypeIPSetDescriptors :: Newtype IPSetDescriptors _
derive instance repGenericIPSetDescriptors :: Generic IPSetDescriptors _
instance showIPSetDescriptors :: Show IPSetDescriptors where show = genericShow
instance decodeIPSetDescriptors :: Decode IPSetDescriptors where decode = genericDecode options
instance encodeIPSetDescriptors :: Encode IPSetDescriptors where encode = genericEncode options



newtype IPSetSummaries = IPSetSummaries (Array IPSetSummary)
derive instance newtypeIPSetSummaries :: Newtype IPSetSummaries _
derive instance repGenericIPSetSummaries :: Generic IPSetSummaries _
instance showIPSetSummaries :: Show IPSetSummaries where show = genericShow
instance decodeIPSetSummaries :: Decode IPSetSummaries where decode = genericDecode options
instance encodeIPSetSummaries :: Encode IPSetSummaries where encode = genericEncode options



-- | <p>Contains the identifier and the name of the <code>IPSet</code>.</p>
newtype IPSetSummary = IPSetSummary 
  { "IPSetId" :: (ResourceId)
  , "Name" :: (ResourceName)
  }
derive instance newtypeIPSetSummary :: Newtype IPSetSummary _
derive instance repGenericIPSetSummary :: Generic IPSetSummary _
instance showIPSetSummary :: Show IPSetSummary where show = genericShow
instance decodeIPSetSummary :: Decode IPSetSummary where decode = genericDecode options
instance encodeIPSetSummary :: Encode IPSetSummary where encode = genericEncode options

-- | Constructs IPSetSummary from required parameters
newIPSetSummary :: ResourceId -> ResourceName -> IPSetSummary
newIPSetSummary _IPSetId _Name = IPSetSummary { "IPSetId": _IPSetId, "Name": _Name }

-- | Constructs IPSetSummary's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newIPSetSummary' :: ResourceId -> ResourceName -> ( { "IPSetId" :: (ResourceId) , "Name" :: (ResourceName) } -> {"IPSetId" :: (ResourceId) , "Name" :: (ResourceName) } ) -> IPSetSummary
newIPSetSummary' _IPSetId _Name customize = (IPSetSummary <<< customize) { "IPSetId": _IPSetId, "Name": _Name }



-- | <p>Specifies the type of update to perform to an <a>IPSet</a> with <a>UpdateIPSet</a>.</p>
newtype IPSetUpdate = IPSetUpdate 
  { "Action" :: (ChangeAction)
  , "IPSetDescriptor" :: (IPSetDescriptor)
  }
derive instance newtypeIPSetUpdate :: Newtype IPSetUpdate _
derive instance repGenericIPSetUpdate :: Generic IPSetUpdate _
instance showIPSetUpdate :: Show IPSetUpdate where show = genericShow
instance decodeIPSetUpdate :: Decode IPSetUpdate where decode = genericDecode options
instance encodeIPSetUpdate :: Encode IPSetUpdate where encode = genericEncode options

-- | Constructs IPSetUpdate from required parameters
newIPSetUpdate :: ChangeAction -> IPSetDescriptor -> IPSetUpdate
newIPSetUpdate _Action _IPSetDescriptor = IPSetUpdate { "Action": _Action, "IPSetDescriptor": _IPSetDescriptor }

-- | Constructs IPSetUpdate's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newIPSetUpdate' :: ChangeAction -> IPSetDescriptor -> ( { "Action" :: (ChangeAction) , "IPSetDescriptor" :: (IPSetDescriptor) } -> {"Action" :: (ChangeAction) , "IPSetDescriptor" :: (IPSetDescriptor) } ) -> IPSetUpdate
newIPSetUpdate' _Action _IPSetDescriptor customize = (IPSetUpdate <<< customize) { "Action": _Action, "IPSetDescriptor": _IPSetDescriptor }



newtype IPSetUpdates = IPSetUpdates (Array IPSetUpdate)
derive instance newtypeIPSetUpdates :: Newtype IPSetUpdates _
derive instance repGenericIPSetUpdates :: Generic IPSetUpdates _
instance showIPSetUpdates :: Show IPSetUpdates where show = genericShow
instance decodeIPSetUpdates :: Decode IPSetUpdates where decode = genericDecode options
instance encodeIPSetUpdates :: Encode IPSetUpdates where encode = genericEncode options



newtype IPString = IPString String
derive instance newtypeIPString :: Newtype IPString _
derive instance repGenericIPString :: Generic IPString _
instance showIPString :: Show IPString where show = genericShow
instance decodeIPString :: Decode IPString where decode = genericDecode options
instance encodeIPString :: Encode IPString where encode = genericEncode options



newtype ListActivatedRulesInRuleGroupRequest = ListActivatedRulesInRuleGroupRequest 
  { "RuleGroupId" :: Maybe (ResourceId)
  , "NextMarker" :: Maybe (NextMarker)
  , "Limit" :: Maybe (PaginationLimit)
  }
derive instance newtypeListActivatedRulesInRuleGroupRequest :: Newtype ListActivatedRulesInRuleGroupRequest _
derive instance repGenericListActivatedRulesInRuleGroupRequest :: Generic ListActivatedRulesInRuleGroupRequest _
instance showListActivatedRulesInRuleGroupRequest :: Show ListActivatedRulesInRuleGroupRequest where show = genericShow
instance decodeListActivatedRulesInRuleGroupRequest :: Decode ListActivatedRulesInRuleGroupRequest where decode = genericDecode options
instance encodeListActivatedRulesInRuleGroupRequest :: Encode ListActivatedRulesInRuleGroupRequest where encode = genericEncode options

-- | Constructs ListActivatedRulesInRuleGroupRequest from required parameters
newListActivatedRulesInRuleGroupRequest :: ListActivatedRulesInRuleGroupRequest
newListActivatedRulesInRuleGroupRequest  = ListActivatedRulesInRuleGroupRequest { "Limit": Nothing, "NextMarker": Nothing, "RuleGroupId": Nothing }

-- | Constructs ListActivatedRulesInRuleGroupRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListActivatedRulesInRuleGroupRequest' :: ( { "RuleGroupId" :: Maybe (ResourceId) , "NextMarker" :: Maybe (NextMarker) , "Limit" :: Maybe (PaginationLimit) } -> {"RuleGroupId" :: Maybe (ResourceId) , "NextMarker" :: Maybe (NextMarker) , "Limit" :: Maybe (PaginationLimit) } ) -> ListActivatedRulesInRuleGroupRequest
newListActivatedRulesInRuleGroupRequest'  customize = (ListActivatedRulesInRuleGroupRequest <<< customize) { "Limit": Nothing, "NextMarker": Nothing, "RuleGroupId": Nothing }



newtype ListActivatedRulesInRuleGroupResponse = ListActivatedRulesInRuleGroupResponse 
  { "NextMarker" :: Maybe (NextMarker)
  , "ActivatedRules" :: Maybe (ActivatedRules)
  }
derive instance newtypeListActivatedRulesInRuleGroupResponse :: Newtype ListActivatedRulesInRuleGroupResponse _
derive instance repGenericListActivatedRulesInRuleGroupResponse :: Generic ListActivatedRulesInRuleGroupResponse _
instance showListActivatedRulesInRuleGroupResponse :: Show ListActivatedRulesInRuleGroupResponse where show = genericShow
instance decodeListActivatedRulesInRuleGroupResponse :: Decode ListActivatedRulesInRuleGroupResponse where decode = genericDecode options
instance encodeListActivatedRulesInRuleGroupResponse :: Encode ListActivatedRulesInRuleGroupResponse where encode = genericEncode options

-- | Constructs ListActivatedRulesInRuleGroupResponse from required parameters
newListActivatedRulesInRuleGroupResponse :: ListActivatedRulesInRuleGroupResponse
newListActivatedRulesInRuleGroupResponse  = ListActivatedRulesInRuleGroupResponse { "ActivatedRules": Nothing, "NextMarker": Nothing }

-- | Constructs ListActivatedRulesInRuleGroupResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListActivatedRulesInRuleGroupResponse' :: ( { "NextMarker" :: Maybe (NextMarker) , "ActivatedRules" :: Maybe (ActivatedRules) } -> {"NextMarker" :: Maybe (NextMarker) , "ActivatedRules" :: Maybe (ActivatedRules) } ) -> ListActivatedRulesInRuleGroupResponse
newListActivatedRulesInRuleGroupResponse'  customize = (ListActivatedRulesInRuleGroupResponse <<< customize) { "ActivatedRules": Nothing, "NextMarker": Nothing }



newtype ListByteMatchSetsRequest = ListByteMatchSetsRequest 
  { "NextMarker" :: Maybe (NextMarker)
  , "Limit" :: Maybe (PaginationLimit)
  }
derive instance newtypeListByteMatchSetsRequest :: Newtype ListByteMatchSetsRequest _
derive instance repGenericListByteMatchSetsRequest :: Generic ListByteMatchSetsRequest _
instance showListByteMatchSetsRequest :: Show ListByteMatchSetsRequest where show = genericShow
instance decodeListByteMatchSetsRequest :: Decode ListByteMatchSetsRequest where decode = genericDecode options
instance encodeListByteMatchSetsRequest :: Encode ListByteMatchSetsRequest where encode = genericEncode options

-- | Constructs ListByteMatchSetsRequest from required parameters
newListByteMatchSetsRequest :: ListByteMatchSetsRequest
newListByteMatchSetsRequest  = ListByteMatchSetsRequest { "Limit": Nothing, "NextMarker": Nothing }

-- | Constructs ListByteMatchSetsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListByteMatchSetsRequest' :: ( { "NextMarker" :: Maybe (NextMarker) , "Limit" :: Maybe (PaginationLimit) } -> {"NextMarker" :: Maybe (NextMarker) , "Limit" :: Maybe (PaginationLimit) } ) -> ListByteMatchSetsRequest
newListByteMatchSetsRequest'  customize = (ListByteMatchSetsRequest <<< customize) { "Limit": Nothing, "NextMarker": Nothing }



newtype ListByteMatchSetsResponse = ListByteMatchSetsResponse 
  { "NextMarker" :: Maybe (NextMarker)
  , "ByteMatchSets" :: Maybe (ByteMatchSetSummaries)
  }
derive instance newtypeListByteMatchSetsResponse :: Newtype ListByteMatchSetsResponse _
derive instance repGenericListByteMatchSetsResponse :: Generic ListByteMatchSetsResponse _
instance showListByteMatchSetsResponse :: Show ListByteMatchSetsResponse where show = genericShow
instance decodeListByteMatchSetsResponse :: Decode ListByteMatchSetsResponse where decode = genericDecode options
instance encodeListByteMatchSetsResponse :: Encode ListByteMatchSetsResponse where encode = genericEncode options

-- | Constructs ListByteMatchSetsResponse from required parameters
newListByteMatchSetsResponse :: ListByteMatchSetsResponse
newListByteMatchSetsResponse  = ListByteMatchSetsResponse { "ByteMatchSets": Nothing, "NextMarker": Nothing }

-- | Constructs ListByteMatchSetsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListByteMatchSetsResponse' :: ( { "NextMarker" :: Maybe (NextMarker) , "ByteMatchSets" :: Maybe (ByteMatchSetSummaries) } -> {"NextMarker" :: Maybe (NextMarker) , "ByteMatchSets" :: Maybe (ByteMatchSetSummaries) } ) -> ListByteMatchSetsResponse
newListByteMatchSetsResponse'  customize = (ListByteMatchSetsResponse <<< customize) { "ByteMatchSets": Nothing, "NextMarker": Nothing }



newtype ListGeoMatchSetsRequest = ListGeoMatchSetsRequest 
  { "NextMarker" :: Maybe (NextMarker)
  , "Limit" :: Maybe (PaginationLimit)
  }
derive instance newtypeListGeoMatchSetsRequest :: Newtype ListGeoMatchSetsRequest _
derive instance repGenericListGeoMatchSetsRequest :: Generic ListGeoMatchSetsRequest _
instance showListGeoMatchSetsRequest :: Show ListGeoMatchSetsRequest where show = genericShow
instance decodeListGeoMatchSetsRequest :: Decode ListGeoMatchSetsRequest where decode = genericDecode options
instance encodeListGeoMatchSetsRequest :: Encode ListGeoMatchSetsRequest where encode = genericEncode options

-- | Constructs ListGeoMatchSetsRequest from required parameters
newListGeoMatchSetsRequest :: ListGeoMatchSetsRequest
newListGeoMatchSetsRequest  = ListGeoMatchSetsRequest { "Limit": Nothing, "NextMarker": Nothing }

-- | Constructs ListGeoMatchSetsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListGeoMatchSetsRequest' :: ( { "NextMarker" :: Maybe (NextMarker) , "Limit" :: Maybe (PaginationLimit) } -> {"NextMarker" :: Maybe (NextMarker) , "Limit" :: Maybe (PaginationLimit) } ) -> ListGeoMatchSetsRequest
newListGeoMatchSetsRequest'  customize = (ListGeoMatchSetsRequest <<< customize) { "Limit": Nothing, "NextMarker": Nothing }



newtype ListGeoMatchSetsResponse = ListGeoMatchSetsResponse 
  { "NextMarker" :: Maybe (NextMarker)
  , "GeoMatchSets" :: Maybe (GeoMatchSetSummaries)
  }
derive instance newtypeListGeoMatchSetsResponse :: Newtype ListGeoMatchSetsResponse _
derive instance repGenericListGeoMatchSetsResponse :: Generic ListGeoMatchSetsResponse _
instance showListGeoMatchSetsResponse :: Show ListGeoMatchSetsResponse where show = genericShow
instance decodeListGeoMatchSetsResponse :: Decode ListGeoMatchSetsResponse where decode = genericDecode options
instance encodeListGeoMatchSetsResponse :: Encode ListGeoMatchSetsResponse where encode = genericEncode options

-- | Constructs ListGeoMatchSetsResponse from required parameters
newListGeoMatchSetsResponse :: ListGeoMatchSetsResponse
newListGeoMatchSetsResponse  = ListGeoMatchSetsResponse { "GeoMatchSets": Nothing, "NextMarker": Nothing }

-- | Constructs ListGeoMatchSetsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListGeoMatchSetsResponse' :: ( { "NextMarker" :: Maybe (NextMarker) , "GeoMatchSets" :: Maybe (GeoMatchSetSummaries) } -> {"NextMarker" :: Maybe (NextMarker) , "GeoMatchSets" :: Maybe (GeoMatchSetSummaries) } ) -> ListGeoMatchSetsResponse
newListGeoMatchSetsResponse'  customize = (ListGeoMatchSetsResponse <<< customize) { "GeoMatchSets": Nothing, "NextMarker": Nothing }



newtype ListIPSetsRequest = ListIPSetsRequest 
  { "NextMarker" :: Maybe (NextMarker)
  , "Limit" :: Maybe (PaginationLimit)
  }
derive instance newtypeListIPSetsRequest :: Newtype ListIPSetsRequest _
derive instance repGenericListIPSetsRequest :: Generic ListIPSetsRequest _
instance showListIPSetsRequest :: Show ListIPSetsRequest where show = genericShow
instance decodeListIPSetsRequest :: Decode ListIPSetsRequest where decode = genericDecode options
instance encodeListIPSetsRequest :: Encode ListIPSetsRequest where encode = genericEncode options

-- | Constructs ListIPSetsRequest from required parameters
newListIPSetsRequest :: ListIPSetsRequest
newListIPSetsRequest  = ListIPSetsRequest { "Limit": Nothing, "NextMarker": Nothing }

-- | Constructs ListIPSetsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListIPSetsRequest' :: ( { "NextMarker" :: Maybe (NextMarker) , "Limit" :: Maybe (PaginationLimit) } -> {"NextMarker" :: Maybe (NextMarker) , "Limit" :: Maybe (PaginationLimit) } ) -> ListIPSetsRequest
newListIPSetsRequest'  customize = (ListIPSetsRequest <<< customize) { "Limit": Nothing, "NextMarker": Nothing }



newtype ListIPSetsResponse = ListIPSetsResponse 
  { "NextMarker" :: Maybe (NextMarker)
  , "IPSets" :: Maybe (IPSetSummaries)
  }
derive instance newtypeListIPSetsResponse :: Newtype ListIPSetsResponse _
derive instance repGenericListIPSetsResponse :: Generic ListIPSetsResponse _
instance showListIPSetsResponse :: Show ListIPSetsResponse where show = genericShow
instance decodeListIPSetsResponse :: Decode ListIPSetsResponse where decode = genericDecode options
instance encodeListIPSetsResponse :: Encode ListIPSetsResponse where encode = genericEncode options

-- | Constructs ListIPSetsResponse from required parameters
newListIPSetsResponse :: ListIPSetsResponse
newListIPSetsResponse  = ListIPSetsResponse { "IPSets": Nothing, "NextMarker": Nothing }

-- | Constructs ListIPSetsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListIPSetsResponse' :: ( { "NextMarker" :: Maybe (NextMarker) , "IPSets" :: Maybe (IPSetSummaries) } -> {"NextMarker" :: Maybe (NextMarker) , "IPSets" :: Maybe (IPSetSummaries) } ) -> ListIPSetsResponse
newListIPSetsResponse'  customize = (ListIPSetsResponse <<< customize) { "IPSets": Nothing, "NextMarker": Nothing }



newtype ListRateBasedRulesRequest = ListRateBasedRulesRequest 
  { "NextMarker" :: Maybe (NextMarker)
  , "Limit" :: Maybe (PaginationLimit)
  }
derive instance newtypeListRateBasedRulesRequest :: Newtype ListRateBasedRulesRequest _
derive instance repGenericListRateBasedRulesRequest :: Generic ListRateBasedRulesRequest _
instance showListRateBasedRulesRequest :: Show ListRateBasedRulesRequest where show = genericShow
instance decodeListRateBasedRulesRequest :: Decode ListRateBasedRulesRequest where decode = genericDecode options
instance encodeListRateBasedRulesRequest :: Encode ListRateBasedRulesRequest where encode = genericEncode options

-- | Constructs ListRateBasedRulesRequest from required parameters
newListRateBasedRulesRequest :: ListRateBasedRulesRequest
newListRateBasedRulesRequest  = ListRateBasedRulesRequest { "Limit": Nothing, "NextMarker": Nothing }

-- | Constructs ListRateBasedRulesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListRateBasedRulesRequest' :: ( { "NextMarker" :: Maybe (NextMarker) , "Limit" :: Maybe (PaginationLimit) } -> {"NextMarker" :: Maybe (NextMarker) , "Limit" :: Maybe (PaginationLimit) } ) -> ListRateBasedRulesRequest
newListRateBasedRulesRequest'  customize = (ListRateBasedRulesRequest <<< customize) { "Limit": Nothing, "NextMarker": Nothing }



newtype ListRateBasedRulesResponse = ListRateBasedRulesResponse 
  { "NextMarker" :: Maybe (NextMarker)
  , "Rules" :: Maybe (RuleSummaries)
  }
derive instance newtypeListRateBasedRulesResponse :: Newtype ListRateBasedRulesResponse _
derive instance repGenericListRateBasedRulesResponse :: Generic ListRateBasedRulesResponse _
instance showListRateBasedRulesResponse :: Show ListRateBasedRulesResponse where show = genericShow
instance decodeListRateBasedRulesResponse :: Decode ListRateBasedRulesResponse where decode = genericDecode options
instance encodeListRateBasedRulesResponse :: Encode ListRateBasedRulesResponse where encode = genericEncode options

-- | Constructs ListRateBasedRulesResponse from required parameters
newListRateBasedRulesResponse :: ListRateBasedRulesResponse
newListRateBasedRulesResponse  = ListRateBasedRulesResponse { "NextMarker": Nothing, "Rules": Nothing }

-- | Constructs ListRateBasedRulesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListRateBasedRulesResponse' :: ( { "NextMarker" :: Maybe (NextMarker) , "Rules" :: Maybe (RuleSummaries) } -> {"NextMarker" :: Maybe (NextMarker) , "Rules" :: Maybe (RuleSummaries) } ) -> ListRateBasedRulesResponse
newListRateBasedRulesResponse'  customize = (ListRateBasedRulesResponse <<< customize) { "NextMarker": Nothing, "Rules": Nothing }



newtype ListRegexMatchSetsRequest = ListRegexMatchSetsRequest 
  { "NextMarker" :: Maybe (NextMarker)
  , "Limit" :: Maybe (PaginationLimit)
  }
derive instance newtypeListRegexMatchSetsRequest :: Newtype ListRegexMatchSetsRequest _
derive instance repGenericListRegexMatchSetsRequest :: Generic ListRegexMatchSetsRequest _
instance showListRegexMatchSetsRequest :: Show ListRegexMatchSetsRequest where show = genericShow
instance decodeListRegexMatchSetsRequest :: Decode ListRegexMatchSetsRequest where decode = genericDecode options
instance encodeListRegexMatchSetsRequest :: Encode ListRegexMatchSetsRequest where encode = genericEncode options

-- | Constructs ListRegexMatchSetsRequest from required parameters
newListRegexMatchSetsRequest :: ListRegexMatchSetsRequest
newListRegexMatchSetsRequest  = ListRegexMatchSetsRequest { "Limit": Nothing, "NextMarker": Nothing }

-- | Constructs ListRegexMatchSetsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListRegexMatchSetsRequest' :: ( { "NextMarker" :: Maybe (NextMarker) , "Limit" :: Maybe (PaginationLimit) } -> {"NextMarker" :: Maybe (NextMarker) , "Limit" :: Maybe (PaginationLimit) } ) -> ListRegexMatchSetsRequest
newListRegexMatchSetsRequest'  customize = (ListRegexMatchSetsRequest <<< customize) { "Limit": Nothing, "NextMarker": Nothing }



newtype ListRegexMatchSetsResponse = ListRegexMatchSetsResponse 
  { "NextMarker" :: Maybe (NextMarker)
  , "RegexMatchSets" :: Maybe (RegexMatchSetSummaries)
  }
derive instance newtypeListRegexMatchSetsResponse :: Newtype ListRegexMatchSetsResponse _
derive instance repGenericListRegexMatchSetsResponse :: Generic ListRegexMatchSetsResponse _
instance showListRegexMatchSetsResponse :: Show ListRegexMatchSetsResponse where show = genericShow
instance decodeListRegexMatchSetsResponse :: Decode ListRegexMatchSetsResponse where decode = genericDecode options
instance encodeListRegexMatchSetsResponse :: Encode ListRegexMatchSetsResponse where encode = genericEncode options

-- | Constructs ListRegexMatchSetsResponse from required parameters
newListRegexMatchSetsResponse :: ListRegexMatchSetsResponse
newListRegexMatchSetsResponse  = ListRegexMatchSetsResponse { "NextMarker": Nothing, "RegexMatchSets": Nothing }

-- | Constructs ListRegexMatchSetsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListRegexMatchSetsResponse' :: ( { "NextMarker" :: Maybe (NextMarker) , "RegexMatchSets" :: Maybe (RegexMatchSetSummaries) } -> {"NextMarker" :: Maybe (NextMarker) , "RegexMatchSets" :: Maybe (RegexMatchSetSummaries) } ) -> ListRegexMatchSetsResponse
newListRegexMatchSetsResponse'  customize = (ListRegexMatchSetsResponse <<< customize) { "NextMarker": Nothing, "RegexMatchSets": Nothing }



newtype ListRegexPatternSetsRequest = ListRegexPatternSetsRequest 
  { "NextMarker" :: Maybe (NextMarker)
  , "Limit" :: Maybe (PaginationLimit)
  }
derive instance newtypeListRegexPatternSetsRequest :: Newtype ListRegexPatternSetsRequest _
derive instance repGenericListRegexPatternSetsRequest :: Generic ListRegexPatternSetsRequest _
instance showListRegexPatternSetsRequest :: Show ListRegexPatternSetsRequest where show = genericShow
instance decodeListRegexPatternSetsRequest :: Decode ListRegexPatternSetsRequest where decode = genericDecode options
instance encodeListRegexPatternSetsRequest :: Encode ListRegexPatternSetsRequest where encode = genericEncode options

-- | Constructs ListRegexPatternSetsRequest from required parameters
newListRegexPatternSetsRequest :: ListRegexPatternSetsRequest
newListRegexPatternSetsRequest  = ListRegexPatternSetsRequest { "Limit": Nothing, "NextMarker": Nothing }

-- | Constructs ListRegexPatternSetsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListRegexPatternSetsRequest' :: ( { "NextMarker" :: Maybe (NextMarker) , "Limit" :: Maybe (PaginationLimit) } -> {"NextMarker" :: Maybe (NextMarker) , "Limit" :: Maybe (PaginationLimit) } ) -> ListRegexPatternSetsRequest
newListRegexPatternSetsRequest'  customize = (ListRegexPatternSetsRequest <<< customize) { "Limit": Nothing, "NextMarker": Nothing }



newtype ListRegexPatternSetsResponse = ListRegexPatternSetsResponse 
  { "NextMarker" :: Maybe (NextMarker)
  , "RegexPatternSets" :: Maybe (RegexPatternSetSummaries)
  }
derive instance newtypeListRegexPatternSetsResponse :: Newtype ListRegexPatternSetsResponse _
derive instance repGenericListRegexPatternSetsResponse :: Generic ListRegexPatternSetsResponse _
instance showListRegexPatternSetsResponse :: Show ListRegexPatternSetsResponse where show = genericShow
instance decodeListRegexPatternSetsResponse :: Decode ListRegexPatternSetsResponse where decode = genericDecode options
instance encodeListRegexPatternSetsResponse :: Encode ListRegexPatternSetsResponse where encode = genericEncode options

-- | Constructs ListRegexPatternSetsResponse from required parameters
newListRegexPatternSetsResponse :: ListRegexPatternSetsResponse
newListRegexPatternSetsResponse  = ListRegexPatternSetsResponse { "NextMarker": Nothing, "RegexPatternSets": Nothing }

-- | Constructs ListRegexPatternSetsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListRegexPatternSetsResponse' :: ( { "NextMarker" :: Maybe (NextMarker) , "RegexPatternSets" :: Maybe (RegexPatternSetSummaries) } -> {"NextMarker" :: Maybe (NextMarker) , "RegexPatternSets" :: Maybe (RegexPatternSetSummaries) } ) -> ListRegexPatternSetsResponse
newListRegexPatternSetsResponse'  customize = (ListRegexPatternSetsResponse <<< customize) { "NextMarker": Nothing, "RegexPatternSets": Nothing }



newtype ListResourcesForWebACLRequest = ListResourcesForWebACLRequest 
  { "WebACLId" :: (ResourceId)
  }
derive instance newtypeListResourcesForWebACLRequest :: Newtype ListResourcesForWebACLRequest _
derive instance repGenericListResourcesForWebACLRequest :: Generic ListResourcesForWebACLRequest _
instance showListResourcesForWebACLRequest :: Show ListResourcesForWebACLRequest where show = genericShow
instance decodeListResourcesForWebACLRequest :: Decode ListResourcesForWebACLRequest where decode = genericDecode options
instance encodeListResourcesForWebACLRequest :: Encode ListResourcesForWebACLRequest where encode = genericEncode options

-- | Constructs ListResourcesForWebACLRequest from required parameters
newListResourcesForWebACLRequest :: ResourceId -> ListResourcesForWebACLRequest
newListResourcesForWebACLRequest _WebACLId = ListResourcesForWebACLRequest { "WebACLId": _WebACLId }

-- | Constructs ListResourcesForWebACLRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListResourcesForWebACLRequest' :: ResourceId -> ( { "WebACLId" :: (ResourceId) } -> {"WebACLId" :: (ResourceId) } ) -> ListResourcesForWebACLRequest
newListResourcesForWebACLRequest' _WebACLId customize = (ListResourcesForWebACLRequest <<< customize) { "WebACLId": _WebACLId }



newtype ListResourcesForWebACLResponse = ListResourcesForWebACLResponse 
  { "ResourceArns" :: Maybe (ResourceArns)
  }
derive instance newtypeListResourcesForWebACLResponse :: Newtype ListResourcesForWebACLResponse _
derive instance repGenericListResourcesForWebACLResponse :: Generic ListResourcesForWebACLResponse _
instance showListResourcesForWebACLResponse :: Show ListResourcesForWebACLResponse where show = genericShow
instance decodeListResourcesForWebACLResponse :: Decode ListResourcesForWebACLResponse where decode = genericDecode options
instance encodeListResourcesForWebACLResponse :: Encode ListResourcesForWebACLResponse where encode = genericEncode options

-- | Constructs ListResourcesForWebACLResponse from required parameters
newListResourcesForWebACLResponse :: ListResourcesForWebACLResponse
newListResourcesForWebACLResponse  = ListResourcesForWebACLResponse { "ResourceArns": Nothing }

-- | Constructs ListResourcesForWebACLResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListResourcesForWebACLResponse' :: ( { "ResourceArns" :: Maybe (ResourceArns) } -> {"ResourceArns" :: Maybe (ResourceArns) } ) -> ListResourcesForWebACLResponse
newListResourcesForWebACLResponse'  customize = (ListResourcesForWebACLResponse <<< customize) { "ResourceArns": Nothing }



newtype ListRuleGroupsRequest = ListRuleGroupsRequest 
  { "NextMarker" :: Maybe (NextMarker)
  , "Limit" :: Maybe (PaginationLimit)
  }
derive instance newtypeListRuleGroupsRequest :: Newtype ListRuleGroupsRequest _
derive instance repGenericListRuleGroupsRequest :: Generic ListRuleGroupsRequest _
instance showListRuleGroupsRequest :: Show ListRuleGroupsRequest where show = genericShow
instance decodeListRuleGroupsRequest :: Decode ListRuleGroupsRequest where decode = genericDecode options
instance encodeListRuleGroupsRequest :: Encode ListRuleGroupsRequest where encode = genericEncode options

-- | Constructs ListRuleGroupsRequest from required parameters
newListRuleGroupsRequest :: ListRuleGroupsRequest
newListRuleGroupsRequest  = ListRuleGroupsRequest { "Limit": Nothing, "NextMarker": Nothing }

-- | Constructs ListRuleGroupsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListRuleGroupsRequest' :: ( { "NextMarker" :: Maybe (NextMarker) , "Limit" :: Maybe (PaginationLimit) } -> {"NextMarker" :: Maybe (NextMarker) , "Limit" :: Maybe (PaginationLimit) } ) -> ListRuleGroupsRequest
newListRuleGroupsRequest'  customize = (ListRuleGroupsRequest <<< customize) { "Limit": Nothing, "NextMarker": Nothing }



newtype ListRuleGroupsResponse = ListRuleGroupsResponse 
  { "NextMarker" :: Maybe (NextMarker)
  , "RuleGroups" :: Maybe (RuleGroupSummaries)
  }
derive instance newtypeListRuleGroupsResponse :: Newtype ListRuleGroupsResponse _
derive instance repGenericListRuleGroupsResponse :: Generic ListRuleGroupsResponse _
instance showListRuleGroupsResponse :: Show ListRuleGroupsResponse where show = genericShow
instance decodeListRuleGroupsResponse :: Decode ListRuleGroupsResponse where decode = genericDecode options
instance encodeListRuleGroupsResponse :: Encode ListRuleGroupsResponse where encode = genericEncode options

-- | Constructs ListRuleGroupsResponse from required parameters
newListRuleGroupsResponse :: ListRuleGroupsResponse
newListRuleGroupsResponse  = ListRuleGroupsResponse { "NextMarker": Nothing, "RuleGroups": Nothing }

-- | Constructs ListRuleGroupsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListRuleGroupsResponse' :: ( { "NextMarker" :: Maybe (NextMarker) , "RuleGroups" :: Maybe (RuleGroupSummaries) } -> {"NextMarker" :: Maybe (NextMarker) , "RuleGroups" :: Maybe (RuleGroupSummaries) } ) -> ListRuleGroupsResponse
newListRuleGroupsResponse'  customize = (ListRuleGroupsResponse <<< customize) { "NextMarker": Nothing, "RuleGroups": Nothing }



newtype ListRulesRequest = ListRulesRequest 
  { "NextMarker" :: Maybe (NextMarker)
  , "Limit" :: Maybe (PaginationLimit)
  }
derive instance newtypeListRulesRequest :: Newtype ListRulesRequest _
derive instance repGenericListRulesRequest :: Generic ListRulesRequest _
instance showListRulesRequest :: Show ListRulesRequest where show = genericShow
instance decodeListRulesRequest :: Decode ListRulesRequest where decode = genericDecode options
instance encodeListRulesRequest :: Encode ListRulesRequest where encode = genericEncode options

-- | Constructs ListRulesRequest from required parameters
newListRulesRequest :: ListRulesRequest
newListRulesRequest  = ListRulesRequest { "Limit": Nothing, "NextMarker": Nothing }

-- | Constructs ListRulesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListRulesRequest' :: ( { "NextMarker" :: Maybe (NextMarker) , "Limit" :: Maybe (PaginationLimit) } -> {"NextMarker" :: Maybe (NextMarker) , "Limit" :: Maybe (PaginationLimit) } ) -> ListRulesRequest
newListRulesRequest'  customize = (ListRulesRequest <<< customize) { "Limit": Nothing, "NextMarker": Nothing }



newtype ListRulesResponse = ListRulesResponse 
  { "NextMarker" :: Maybe (NextMarker)
  , "Rules" :: Maybe (RuleSummaries)
  }
derive instance newtypeListRulesResponse :: Newtype ListRulesResponse _
derive instance repGenericListRulesResponse :: Generic ListRulesResponse _
instance showListRulesResponse :: Show ListRulesResponse where show = genericShow
instance decodeListRulesResponse :: Decode ListRulesResponse where decode = genericDecode options
instance encodeListRulesResponse :: Encode ListRulesResponse where encode = genericEncode options

-- | Constructs ListRulesResponse from required parameters
newListRulesResponse :: ListRulesResponse
newListRulesResponse  = ListRulesResponse { "NextMarker": Nothing, "Rules": Nothing }

-- | Constructs ListRulesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListRulesResponse' :: ( { "NextMarker" :: Maybe (NextMarker) , "Rules" :: Maybe (RuleSummaries) } -> {"NextMarker" :: Maybe (NextMarker) , "Rules" :: Maybe (RuleSummaries) } ) -> ListRulesResponse
newListRulesResponse'  customize = (ListRulesResponse <<< customize) { "NextMarker": Nothing, "Rules": Nothing }



newtype ListSizeConstraintSetsRequest = ListSizeConstraintSetsRequest 
  { "NextMarker" :: Maybe (NextMarker)
  , "Limit" :: Maybe (PaginationLimit)
  }
derive instance newtypeListSizeConstraintSetsRequest :: Newtype ListSizeConstraintSetsRequest _
derive instance repGenericListSizeConstraintSetsRequest :: Generic ListSizeConstraintSetsRequest _
instance showListSizeConstraintSetsRequest :: Show ListSizeConstraintSetsRequest where show = genericShow
instance decodeListSizeConstraintSetsRequest :: Decode ListSizeConstraintSetsRequest where decode = genericDecode options
instance encodeListSizeConstraintSetsRequest :: Encode ListSizeConstraintSetsRequest where encode = genericEncode options

-- | Constructs ListSizeConstraintSetsRequest from required parameters
newListSizeConstraintSetsRequest :: ListSizeConstraintSetsRequest
newListSizeConstraintSetsRequest  = ListSizeConstraintSetsRequest { "Limit": Nothing, "NextMarker": Nothing }

-- | Constructs ListSizeConstraintSetsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListSizeConstraintSetsRequest' :: ( { "NextMarker" :: Maybe (NextMarker) , "Limit" :: Maybe (PaginationLimit) } -> {"NextMarker" :: Maybe (NextMarker) , "Limit" :: Maybe (PaginationLimit) } ) -> ListSizeConstraintSetsRequest
newListSizeConstraintSetsRequest'  customize = (ListSizeConstraintSetsRequest <<< customize) { "Limit": Nothing, "NextMarker": Nothing }



newtype ListSizeConstraintSetsResponse = ListSizeConstraintSetsResponse 
  { "NextMarker" :: Maybe (NextMarker)
  , "SizeConstraintSets" :: Maybe (SizeConstraintSetSummaries)
  }
derive instance newtypeListSizeConstraintSetsResponse :: Newtype ListSizeConstraintSetsResponse _
derive instance repGenericListSizeConstraintSetsResponse :: Generic ListSizeConstraintSetsResponse _
instance showListSizeConstraintSetsResponse :: Show ListSizeConstraintSetsResponse where show = genericShow
instance decodeListSizeConstraintSetsResponse :: Decode ListSizeConstraintSetsResponse where decode = genericDecode options
instance encodeListSizeConstraintSetsResponse :: Encode ListSizeConstraintSetsResponse where encode = genericEncode options

-- | Constructs ListSizeConstraintSetsResponse from required parameters
newListSizeConstraintSetsResponse :: ListSizeConstraintSetsResponse
newListSizeConstraintSetsResponse  = ListSizeConstraintSetsResponse { "NextMarker": Nothing, "SizeConstraintSets": Nothing }

-- | Constructs ListSizeConstraintSetsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListSizeConstraintSetsResponse' :: ( { "NextMarker" :: Maybe (NextMarker) , "SizeConstraintSets" :: Maybe (SizeConstraintSetSummaries) } -> {"NextMarker" :: Maybe (NextMarker) , "SizeConstraintSets" :: Maybe (SizeConstraintSetSummaries) } ) -> ListSizeConstraintSetsResponse
newListSizeConstraintSetsResponse'  customize = (ListSizeConstraintSetsResponse <<< customize) { "NextMarker": Nothing, "SizeConstraintSets": Nothing }



-- | <p>A request to list the <a>SqlInjectionMatchSet</a> objects created by the current AWS account.</p>
newtype ListSqlInjectionMatchSetsRequest = ListSqlInjectionMatchSetsRequest 
  { "NextMarker" :: Maybe (NextMarker)
  , "Limit" :: Maybe (PaginationLimit)
  }
derive instance newtypeListSqlInjectionMatchSetsRequest :: Newtype ListSqlInjectionMatchSetsRequest _
derive instance repGenericListSqlInjectionMatchSetsRequest :: Generic ListSqlInjectionMatchSetsRequest _
instance showListSqlInjectionMatchSetsRequest :: Show ListSqlInjectionMatchSetsRequest where show = genericShow
instance decodeListSqlInjectionMatchSetsRequest :: Decode ListSqlInjectionMatchSetsRequest where decode = genericDecode options
instance encodeListSqlInjectionMatchSetsRequest :: Encode ListSqlInjectionMatchSetsRequest where encode = genericEncode options

-- | Constructs ListSqlInjectionMatchSetsRequest from required parameters
newListSqlInjectionMatchSetsRequest :: ListSqlInjectionMatchSetsRequest
newListSqlInjectionMatchSetsRequest  = ListSqlInjectionMatchSetsRequest { "Limit": Nothing, "NextMarker": Nothing }

-- | Constructs ListSqlInjectionMatchSetsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListSqlInjectionMatchSetsRequest' :: ( { "NextMarker" :: Maybe (NextMarker) , "Limit" :: Maybe (PaginationLimit) } -> {"NextMarker" :: Maybe (NextMarker) , "Limit" :: Maybe (PaginationLimit) } ) -> ListSqlInjectionMatchSetsRequest
newListSqlInjectionMatchSetsRequest'  customize = (ListSqlInjectionMatchSetsRequest <<< customize) { "Limit": Nothing, "NextMarker": Nothing }



-- | <p>The response to a <a>ListSqlInjectionMatchSets</a> request.</p>
newtype ListSqlInjectionMatchSetsResponse = ListSqlInjectionMatchSetsResponse 
  { "NextMarker" :: Maybe (NextMarker)
  , "SqlInjectionMatchSets" :: Maybe (SqlInjectionMatchSetSummaries)
  }
derive instance newtypeListSqlInjectionMatchSetsResponse :: Newtype ListSqlInjectionMatchSetsResponse _
derive instance repGenericListSqlInjectionMatchSetsResponse :: Generic ListSqlInjectionMatchSetsResponse _
instance showListSqlInjectionMatchSetsResponse :: Show ListSqlInjectionMatchSetsResponse where show = genericShow
instance decodeListSqlInjectionMatchSetsResponse :: Decode ListSqlInjectionMatchSetsResponse where decode = genericDecode options
instance encodeListSqlInjectionMatchSetsResponse :: Encode ListSqlInjectionMatchSetsResponse where encode = genericEncode options

-- | Constructs ListSqlInjectionMatchSetsResponse from required parameters
newListSqlInjectionMatchSetsResponse :: ListSqlInjectionMatchSetsResponse
newListSqlInjectionMatchSetsResponse  = ListSqlInjectionMatchSetsResponse { "NextMarker": Nothing, "SqlInjectionMatchSets": Nothing }

-- | Constructs ListSqlInjectionMatchSetsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListSqlInjectionMatchSetsResponse' :: ( { "NextMarker" :: Maybe (NextMarker) , "SqlInjectionMatchSets" :: Maybe (SqlInjectionMatchSetSummaries) } -> {"NextMarker" :: Maybe (NextMarker) , "SqlInjectionMatchSets" :: Maybe (SqlInjectionMatchSetSummaries) } ) -> ListSqlInjectionMatchSetsResponse
newListSqlInjectionMatchSetsResponse'  customize = (ListSqlInjectionMatchSetsResponse <<< customize) { "NextMarker": Nothing, "SqlInjectionMatchSets": Nothing }



newtype ListSubscribedRuleGroupsRequest = ListSubscribedRuleGroupsRequest 
  { "NextMarker" :: Maybe (NextMarker)
  , "Limit" :: Maybe (PaginationLimit)
  }
derive instance newtypeListSubscribedRuleGroupsRequest :: Newtype ListSubscribedRuleGroupsRequest _
derive instance repGenericListSubscribedRuleGroupsRequest :: Generic ListSubscribedRuleGroupsRequest _
instance showListSubscribedRuleGroupsRequest :: Show ListSubscribedRuleGroupsRequest where show = genericShow
instance decodeListSubscribedRuleGroupsRequest :: Decode ListSubscribedRuleGroupsRequest where decode = genericDecode options
instance encodeListSubscribedRuleGroupsRequest :: Encode ListSubscribedRuleGroupsRequest where encode = genericEncode options

-- | Constructs ListSubscribedRuleGroupsRequest from required parameters
newListSubscribedRuleGroupsRequest :: ListSubscribedRuleGroupsRequest
newListSubscribedRuleGroupsRequest  = ListSubscribedRuleGroupsRequest { "Limit": Nothing, "NextMarker": Nothing }

-- | Constructs ListSubscribedRuleGroupsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListSubscribedRuleGroupsRequest' :: ( { "NextMarker" :: Maybe (NextMarker) , "Limit" :: Maybe (PaginationLimit) } -> {"NextMarker" :: Maybe (NextMarker) , "Limit" :: Maybe (PaginationLimit) } ) -> ListSubscribedRuleGroupsRequest
newListSubscribedRuleGroupsRequest'  customize = (ListSubscribedRuleGroupsRequest <<< customize) { "Limit": Nothing, "NextMarker": Nothing }



newtype ListSubscribedRuleGroupsResponse = ListSubscribedRuleGroupsResponse 
  { "NextMarker" :: Maybe (NextMarker)
  , "RuleGroups" :: Maybe (SubscribedRuleGroupSummaries)
  }
derive instance newtypeListSubscribedRuleGroupsResponse :: Newtype ListSubscribedRuleGroupsResponse _
derive instance repGenericListSubscribedRuleGroupsResponse :: Generic ListSubscribedRuleGroupsResponse _
instance showListSubscribedRuleGroupsResponse :: Show ListSubscribedRuleGroupsResponse where show = genericShow
instance decodeListSubscribedRuleGroupsResponse :: Decode ListSubscribedRuleGroupsResponse where decode = genericDecode options
instance encodeListSubscribedRuleGroupsResponse :: Encode ListSubscribedRuleGroupsResponse where encode = genericEncode options

-- | Constructs ListSubscribedRuleGroupsResponse from required parameters
newListSubscribedRuleGroupsResponse :: ListSubscribedRuleGroupsResponse
newListSubscribedRuleGroupsResponse  = ListSubscribedRuleGroupsResponse { "NextMarker": Nothing, "RuleGroups": Nothing }

-- | Constructs ListSubscribedRuleGroupsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListSubscribedRuleGroupsResponse' :: ( { "NextMarker" :: Maybe (NextMarker) , "RuleGroups" :: Maybe (SubscribedRuleGroupSummaries) } -> {"NextMarker" :: Maybe (NextMarker) , "RuleGroups" :: Maybe (SubscribedRuleGroupSummaries) } ) -> ListSubscribedRuleGroupsResponse
newListSubscribedRuleGroupsResponse'  customize = (ListSubscribedRuleGroupsResponse <<< customize) { "NextMarker": Nothing, "RuleGroups": Nothing }



newtype ListWebACLsRequest = ListWebACLsRequest 
  { "NextMarker" :: Maybe (NextMarker)
  , "Limit" :: Maybe (PaginationLimit)
  }
derive instance newtypeListWebACLsRequest :: Newtype ListWebACLsRequest _
derive instance repGenericListWebACLsRequest :: Generic ListWebACLsRequest _
instance showListWebACLsRequest :: Show ListWebACLsRequest where show = genericShow
instance decodeListWebACLsRequest :: Decode ListWebACLsRequest where decode = genericDecode options
instance encodeListWebACLsRequest :: Encode ListWebACLsRequest where encode = genericEncode options

-- | Constructs ListWebACLsRequest from required parameters
newListWebACLsRequest :: ListWebACLsRequest
newListWebACLsRequest  = ListWebACLsRequest { "Limit": Nothing, "NextMarker": Nothing }

-- | Constructs ListWebACLsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListWebACLsRequest' :: ( { "NextMarker" :: Maybe (NextMarker) , "Limit" :: Maybe (PaginationLimit) } -> {"NextMarker" :: Maybe (NextMarker) , "Limit" :: Maybe (PaginationLimit) } ) -> ListWebACLsRequest
newListWebACLsRequest'  customize = (ListWebACLsRequest <<< customize) { "Limit": Nothing, "NextMarker": Nothing }



newtype ListWebACLsResponse = ListWebACLsResponse 
  { "NextMarker" :: Maybe (NextMarker)
  , "WebACLs" :: Maybe (WebACLSummaries)
  }
derive instance newtypeListWebACLsResponse :: Newtype ListWebACLsResponse _
derive instance repGenericListWebACLsResponse :: Generic ListWebACLsResponse _
instance showListWebACLsResponse :: Show ListWebACLsResponse where show = genericShow
instance decodeListWebACLsResponse :: Decode ListWebACLsResponse where decode = genericDecode options
instance encodeListWebACLsResponse :: Encode ListWebACLsResponse where encode = genericEncode options

-- | Constructs ListWebACLsResponse from required parameters
newListWebACLsResponse :: ListWebACLsResponse
newListWebACLsResponse  = ListWebACLsResponse { "NextMarker": Nothing, "WebACLs": Nothing }

-- | Constructs ListWebACLsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListWebACLsResponse' :: ( { "NextMarker" :: Maybe (NextMarker) , "WebACLs" :: Maybe (WebACLSummaries) } -> {"NextMarker" :: Maybe (NextMarker) , "WebACLs" :: Maybe (WebACLSummaries) } ) -> ListWebACLsResponse
newListWebACLsResponse'  customize = (ListWebACLsResponse <<< customize) { "NextMarker": Nothing, "WebACLs": Nothing }



-- | <p>A request to list the <a>XssMatchSet</a> objects created by the current AWS account.</p>
newtype ListXssMatchSetsRequest = ListXssMatchSetsRequest 
  { "NextMarker" :: Maybe (NextMarker)
  , "Limit" :: Maybe (PaginationLimit)
  }
derive instance newtypeListXssMatchSetsRequest :: Newtype ListXssMatchSetsRequest _
derive instance repGenericListXssMatchSetsRequest :: Generic ListXssMatchSetsRequest _
instance showListXssMatchSetsRequest :: Show ListXssMatchSetsRequest where show = genericShow
instance decodeListXssMatchSetsRequest :: Decode ListXssMatchSetsRequest where decode = genericDecode options
instance encodeListXssMatchSetsRequest :: Encode ListXssMatchSetsRequest where encode = genericEncode options

-- | Constructs ListXssMatchSetsRequest from required parameters
newListXssMatchSetsRequest :: ListXssMatchSetsRequest
newListXssMatchSetsRequest  = ListXssMatchSetsRequest { "Limit": Nothing, "NextMarker": Nothing }

-- | Constructs ListXssMatchSetsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListXssMatchSetsRequest' :: ( { "NextMarker" :: Maybe (NextMarker) , "Limit" :: Maybe (PaginationLimit) } -> {"NextMarker" :: Maybe (NextMarker) , "Limit" :: Maybe (PaginationLimit) } ) -> ListXssMatchSetsRequest
newListXssMatchSetsRequest'  customize = (ListXssMatchSetsRequest <<< customize) { "Limit": Nothing, "NextMarker": Nothing }



-- | <p>The response to a <a>ListXssMatchSets</a> request.</p>
newtype ListXssMatchSetsResponse = ListXssMatchSetsResponse 
  { "NextMarker" :: Maybe (NextMarker)
  , "XssMatchSets" :: Maybe (XssMatchSetSummaries)
  }
derive instance newtypeListXssMatchSetsResponse :: Newtype ListXssMatchSetsResponse _
derive instance repGenericListXssMatchSetsResponse :: Generic ListXssMatchSetsResponse _
instance showListXssMatchSetsResponse :: Show ListXssMatchSetsResponse where show = genericShow
instance decodeListXssMatchSetsResponse :: Decode ListXssMatchSetsResponse where decode = genericDecode options
instance encodeListXssMatchSetsResponse :: Encode ListXssMatchSetsResponse where encode = genericEncode options

-- | Constructs ListXssMatchSetsResponse from required parameters
newListXssMatchSetsResponse :: ListXssMatchSetsResponse
newListXssMatchSetsResponse  = ListXssMatchSetsResponse { "NextMarker": Nothing, "XssMatchSets": Nothing }

-- | Constructs ListXssMatchSetsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListXssMatchSetsResponse' :: ( { "NextMarker" :: Maybe (NextMarker) , "XssMatchSets" :: Maybe (XssMatchSetSummaries) } -> {"NextMarker" :: Maybe (NextMarker) , "XssMatchSets" :: Maybe (XssMatchSetSummaries) } ) -> ListXssMatchSetsResponse
newListXssMatchSetsResponse'  customize = (ListXssMatchSetsResponse <<< customize) { "NextMarker": Nothing, "XssMatchSets": Nothing }



newtype ManagedKey = ManagedKey String
derive instance newtypeManagedKey :: Newtype ManagedKey _
derive instance repGenericManagedKey :: Generic ManagedKey _
instance showManagedKey :: Show ManagedKey where show = genericShow
instance decodeManagedKey :: Decode ManagedKey where decode = genericDecode options
instance encodeManagedKey :: Encode ManagedKey where encode = genericEncode options



newtype ManagedKeys = ManagedKeys (Array ManagedKey)
derive instance newtypeManagedKeys :: Newtype ManagedKeys _
derive instance repGenericManagedKeys :: Generic ManagedKeys _
instance showManagedKeys :: Show ManagedKeys where show = genericShow
instance decodeManagedKeys :: Decode ManagedKeys where decode = genericDecode options
instance encodeManagedKeys :: Encode ManagedKeys where encode = genericEncode options



newtype MatchFieldData = MatchFieldData String
derive instance newtypeMatchFieldData :: Newtype MatchFieldData _
derive instance repGenericMatchFieldData :: Generic MatchFieldData _
instance showMatchFieldData :: Show MatchFieldData where show = genericShow
instance decodeMatchFieldData :: Decode MatchFieldData where decode = genericDecode options
instance encodeMatchFieldData :: Encode MatchFieldData where encode = genericEncode options



newtype MatchFieldType = MatchFieldType String
derive instance newtypeMatchFieldType :: Newtype MatchFieldType _
derive instance repGenericMatchFieldType :: Generic MatchFieldType _
instance showMatchFieldType :: Show MatchFieldType where show = genericShow
instance decodeMatchFieldType :: Decode MatchFieldType where decode = genericDecode options
instance encodeMatchFieldType :: Encode MatchFieldType where encode = genericEncode options



newtype MetricName = MetricName String
derive instance newtypeMetricName :: Newtype MetricName _
derive instance repGenericMetricName :: Generic MetricName _
instance showMetricName :: Show MetricName where show = genericShow
instance decodeMetricName :: Decode MetricName where decode = genericDecode options
instance encodeMetricName :: Encode MetricName where encode = genericEncode options



newtype Negated = Negated Boolean
derive instance newtypeNegated :: Newtype Negated _
derive instance repGenericNegated :: Generic Negated _
instance showNegated :: Show Negated where show = genericShow
instance decodeNegated :: Decode Negated where decode = genericDecode options
instance encodeNegated :: Encode Negated where encode = genericEncode options



newtype NextMarker = NextMarker String
derive instance newtypeNextMarker :: Newtype NextMarker _
derive instance repGenericNextMarker :: Generic NextMarker _
instance showNextMarker :: Show NextMarker where show = genericShow
instance decodeNextMarker :: Decode NextMarker where decode = genericDecode options
instance encodeNextMarker :: Encode NextMarker where encode = genericEncode options



newtype PaginationLimit = PaginationLimit Int
derive instance newtypePaginationLimit :: Newtype PaginationLimit _
derive instance repGenericPaginationLimit :: Generic PaginationLimit _
instance showPaginationLimit :: Show PaginationLimit where show = genericShow
instance decodePaginationLimit :: Decode PaginationLimit where decode = genericDecode options
instance encodePaginationLimit :: Encode PaginationLimit where encode = genericEncode options



newtype ParameterExceptionField = ParameterExceptionField String
derive instance newtypeParameterExceptionField :: Newtype ParameterExceptionField _
derive instance repGenericParameterExceptionField :: Generic ParameterExceptionField _
instance showParameterExceptionField :: Show ParameterExceptionField where show = genericShow
instance decodeParameterExceptionField :: Decode ParameterExceptionField where decode = genericDecode options
instance encodeParameterExceptionField :: Encode ParameterExceptionField where encode = genericEncode options



newtype ParameterExceptionParameter = ParameterExceptionParameter String
derive instance newtypeParameterExceptionParameter :: Newtype ParameterExceptionParameter _
derive instance repGenericParameterExceptionParameter :: Generic ParameterExceptionParameter _
instance showParameterExceptionParameter :: Show ParameterExceptionParameter where show = genericShow
instance decodeParameterExceptionParameter :: Decode ParameterExceptionParameter where decode = genericDecode options
instance encodeParameterExceptionParameter :: Encode ParameterExceptionParameter where encode = genericEncode options



newtype ParameterExceptionReason = ParameterExceptionReason String
derive instance newtypeParameterExceptionReason :: Newtype ParameterExceptionReason _
derive instance repGenericParameterExceptionReason :: Generic ParameterExceptionReason _
instance showParameterExceptionReason :: Show ParameterExceptionReason where show = genericShow
instance decodeParameterExceptionReason :: Decode ParameterExceptionReason where decode = genericDecode options
instance encodeParameterExceptionReason :: Encode ParameterExceptionReason where encode = genericEncode options



newtype PolicyString = PolicyString String
derive instance newtypePolicyString :: Newtype PolicyString _
derive instance repGenericPolicyString :: Generic PolicyString _
instance showPolicyString :: Show PolicyString where show = genericShow
instance decodePolicyString :: Decode PolicyString where decode = genericDecode options
instance encodePolicyString :: Encode PolicyString where encode = genericEncode options



newtype PopulationSize = PopulationSize Number
derive instance newtypePopulationSize :: Newtype PopulationSize _
derive instance repGenericPopulationSize :: Generic PopulationSize _
instance showPopulationSize :: Show PopulationSize where show = genericShow
instance decodePopulationSize :: Decode PopulationSize where decode = genericDecode options
instance encodePopulationSize :: Encode PopulationSize where encode = genericEncode options



newtype PositionalConstraint = PositionalConstraint String
derive instance newtypePositionalConstraint :: Newtype PositionalConstraint _
derive instance repGenericPositionalConstraint :: Generic PositionalConstraint _
instance showPositionalConstraint :: Show PositionalConstraint where show = genericShow
instance decodePositionalConstraint :: Decode PositionalConstraint where decode = genericDecode options
instance encodePositionalConstraint :: Encode PositionalConstraint where encode = genericEncode options



-- | <p>Specifies the <a>ByteMatchSet</a>, <a>IPSet</a>, <a>SqlInjectionMatchSet</a>, <a>XssMatchSet</a>, <a>RegexMatchSet</a>, <a>GeoMatchSet</a>, and <a>SizeConstraintSet</a> objects that you want to add to a <code>Rule</code> and, for each object, indicates whether you want to negate the settings, for example, requests that do NOT originate from the IP address 192.0.2.44. </p>
newtype Predicate = Predicate 
  { "Negated" :: (Negated)
  , "Type" :: (PredicateType)
  , "DataId" :: (ResourceId)
  }
derive instance newtypePredicate :: Newtype Predicate _
derive instance repGenericPredicate :: Generic Predicate _
instance showPredicate :: Show Predicate where show = genericShow
instance decodePredicate :: Decode Predicate where decode = genericDecode options
instance encodePredicate :: Encode Predicate where encode = genericEncode options

-- | Constructs Predicate from required parameters
newPredicate :: ResourceId -> Negated -> PredicateType -> Predicate
newPredicate _DataId _Negated _Type = Predicate { "DataId": _DataId, "Negated": _Negated, "Type": _Type }

-- | Constructs Predicate's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPredicate' :: ResourceId -> Negated -> PredicateType -> ( { "Negated" :: (Negated) , "Type" :: (PredicateType) , "DataId" :: (ResourceId) } -> {"Negated" :: (Negated) , "Type" :: (PredicateType) , "DataId" :: (ResourceId) } ) -> Predicate
newPredicate' _DataId _Negated _Type customize = (Predicate <<< customize) { "DataId": _DataId, "Negated": _Negated, "Type": _Type }



newtype PredicateType = PredicateType String
derive instance newtypePredicateType :: Newtype PredicateType _
derive instance repGenericPredicateType :: Generic PredicateType _
instance showPredicateType :: Show PredicateType where show = genericShow
instance decodePredicateType :: Decode PredicateType where decode = genericDecode options
instance encodePredicateType :: Encode PredicateType where encode = genericEncode options



newtype Predicates = Predicates (Array Predicate)
derive instance newtypePredicates :: Newtype Predicates _
derive instance repGenericPredicates :: Generic Predicates _
instance showPredicates :: Show Predicates where show = genericShow
instance decodePredicates :: Decode Predicates where decode = genericDecode options
instance encodePredicates :: Encode Predicates where encode = genericEncode options



newtype PutPermissionPolicyRequest = PutPermissionPolicyRequest 
  { "ResourceArn" :: (ResourceArn)
  , "Policy" :: (PolicyString)
  }
derive instance newtypePutPermissionPolicyRequest :: Newtype PutPermissionPolicyRequest _
derive instance repGenericPutPermissionPolicyRequest :: Generic PutPermissionPolicyRequest _
instance showPutPermissionPolicyRequest :: Show PutPermissionPolicyRequest where show = genericShow
instance decodePutPermissionPolicyRequest :: Decode PutPermissionPolicyRequest where decode = genericDecode options
instance encodePutPermissionPolicyRequest :: Encode PutPermissionPolicyRequest where encode = genericEncode options

-- | Constructs PutPermissionPolicyRequest from required parameters
newPutPermissionPolicyRequest :: PolicyString -> ResourceArn -> PutPermissionPolicyRequest
newPutPermissionPolicyRequest _Policy _ResourceArn = PutPermissionPolicyRequest { "Policy": _Policy, "ResourceArn": _ResourceArn }

-- | Constructs PutPermissionPolicyRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPutPermissionPolicyRequest' :: PolicyString -> ResourceArn -> ( { "ResourceArn" :: (ResourceArn) , "Policy" :: (PolicyString) } -> {"ResourceArn" :: (ResourceArn) , "Policy" :: (PolicyString) } ) -> PutPermissionPolicyRequest
newPutPermissionPolicyRequest' _Policy _ResourceArn customize = (PutPermissionPolicyRequest <<< customize) { "Policy": _Policy, "ResourceArn": _ResourceArn }



newtype PutPermissionPolicyResponse = PutPermissionPolicyResponse Types.NoArguments
derive instance newtypePutPermissionPolicyResponse :: Newtype PutPermissionPolicyResponse _
derive instance repGenericPutPermissionPolicyResponse :: Generic PutPermissionPolicyResponse _
instance showPutPermissionPolicyResponse :: Show PutPermissionPolicyResponse where show = genericShow
instance decodePutPermissionPolicyResponse :: Decode PutPermissionPolicyResponse where decode = genericDecode options
instance encodePutPermissionPolicyResponse :: Encode PutPermissionPolicyResponse where encode = genericEncode options



-- | <p>A <code>RateBasedRule</code> is identical to a regular <a>Rule</a>, with one addition: a <code>RateBasedRule</code> counts the number of requests that arrive from a specified IP address every five minutes. For example, based on recent requests that you've seen from an attacker, you might create a <code>RateBasedRule</code> that includes the following conditions: </p> <ul> <li> <p>The requests come from 192.0.2.44.</p> </li> <li> <p>They contain the value <code>BadBot</code> in the <code>User-Agent</code> header.</p> </li> </ul> <p>In the rule, you also define the rate limit as 15,000.</p> <p>Requests that meet both of these conditions and exceed 15,000 requests every five minutes trigger the rule's action (block or count), which is defined in the web ACL.</p>
newtype RateBasedRule = RateBasedRule 
  { "RuleId" :: (ResourceId)
  , "Name" :: Maybe (ResourceName)
  , "MetricName" :: Maybe (MetricName)
  , "MatchPredicates" :: (Predicates)
  , "RateKey" :: (RateKey)
  , "RateLimit" :: (RateLimit)
  }
derive instance newtypeRateBasedRule :: Newtype RateBasedRule _
derive instance repGenericRateBasedRule :: Generic RateBasedRule _
instance showRateBasedRule :: Show RateBasedRule where show = genericShow
instance decodeRateBasedRule :: Decode RateBasedRule where decode = genericDecode options
instance encodeRateBasedRule :: Encode RateBasedRule where encode = genericEncode options

-- | Constructs RateBasedRule from required parameters
newRateBasedRule :: Predicates -> RateKey -> RateLimit -> ResourceId -> RateBasedRule
newRateBasedRule _MatchPredicates _RateKey _RateLimit _RuleId = RateBasedRule { "MatchPredicates": _MatchPredicates, "RateKey": _RateKey, "RateLimit": _RateLimit, "RuleId": _RuleId, "MetricName": Nothing, "Name": Nothing }

-- | Constructs RateBasedRule's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRateBasedRule' :: Predicates -> RateKey -> RateLimit -> ResourceId -> ( { "RuleId" :: (ResourceId) , "Name" :: Maybe (ResourceName) , "MetricName" :: Maybe (MetricName) , "MatchPredicates" :: (Predicates) , "RateKey" :: (RateKey) , "RateLimit" :: (RateLimit) } -> {"RuleId" :: (ResourceId) , "Name" :: Maybe (ResourceName) , "MetricName" :: Maybe (MetricName) , "MatchPredicates" :: (Predicates) , "RateKey" :: (RateKey) , "RateLimit" :: (RateLimit) } ) -> RateBasedRule
newRateBasedRule' _MatchPredicates _RateKey _RateLimit _RuleId customize = (RateBasedRule <<< customize) { "MatchPredicates": _MatchPredicates, "RateKey": _RateKey, "RateLimit": _RateLimit, "RuleId": _RuleId, "MetricName": Nothing, "Name": Nothing }



newtype RateKey = RateKey String
derive instance newtypeRateKey :: Newtype RateKey _
derive instance repGenericRateKey :: Generic RateKey _
instance showRateKey :: Show RateKey where show = genericShow
instance decodeRateKey :: Decode RateKey where decode = genericDecode options
instance encodeRateKey :: Encode RateKey where encode = genericEncode options



newtype RateLimit = RateLimit Number
derive instance newtypeRateLimit :: Newtype RateLimit _
derive instance repGenericRateLimit :: Generic RateLimit _
instance showRateLimit :: Show RateLimit where show = genericShow
instance decodeRateLimit :: Decode RateLimit where decode = genericDecode options
instance encodeRateLimit :: Encode RateLimit where encode = genericEncode options



-- | <p>In a <a>GetRegexMatchSet</a> request, <code>RegexMatchSet</code> is a complex type that contains the <code>RegexMatchSetId</code> and <code>Name</code> of a <code>RegexMatchSet</code>, and the values that you specified when you updated the <code>RegexMatchSet</code>.</p> <p> The values are contained in a <code>RegexMatchTuple</code> object, which specify the parts of web requests that you want AWS WAF to inspect and the values that you want AWS WAF to search for. If a <code>RegexMatchSet</code> contains more than one <code>RegexMatchTuple</code> object, a request needs to match the settings in only one <code>ByteMatchTuple</code> to be considered a match.</p>
newtype RegexMatchSet = RegexMatchSet 
  { "RegexMatchSetId" :: Maybe (ResourceId)
  , "Name" :: Maybe (ResourceName)
  , "RegexMatchTuples" :: Maybe (RegexMatchTuples)
  }
derive instance newtypeRegexMatchSet :: Newtype RegexMatchSet _
derive instance repGenericRegexMatchSet :: Generic RegexMatchSet _
instance showRegexMatchSet :: Show RegexMatchSet where show = genericShow
instance decodeRegexMatchSet :: Decode RegexMatchSet where decode = genericDecode options
instance encodeRegexMatchSet :: Encode RegexMatchSet where encode = genericEncode options

-- | Constructs RegexMatchSet from required parameters
newRegexMatchSet :: RegexMatchSet
newRegexMatchSet  = RegexMatchSet { "Name": Nothing, "RegexMatchSetId": Nothing, "RegexMatchTuples": Nothing }

-- | Constructs RegexMatchSet's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRegexMatchSet' :: ( { "RegexMatchSetId" :: Maybe (ResourceId) , "Name" :: Maybe (ResourceName) , "RegexMatchTuples" :: Maybe (RegexMatchTuples) } -> {"RegexMatchSetId" :: Maybe (ResourceId) , "Name" :: Maybe (ResourceName) , "RegexMatchTuples" :: Maybe (RegexMatchTuples) } ) -> RegexMatchSet
newRegexMatchSet'  customize = (RegexMatchSet <<< customize) { "Name": Nothing, "RegexMatchSetId": Nothing, "RegexMatchTuples": Nothing }



newtype RegexMatchSetSummaries = RegexMatchSetSummaries (Array RegexMatchSetSummary)
derive instance newtypeRegexMatchSetSummaries :: Newtype RegexMatchSetSummaries _
derive instance repGenericRegexMatchSetSummaries :: Generic RegexMatchSetSummaries _
instance showRegexMatchSetSummaries :: Show RegexMatchSetSummaries where show = genericShow
instance decodeRegexMatchSetSummaries :: Decode RegexMatchSetSummaries where decode = genericDecode options
instance encodeRegexMatchSetSummaries :: Encode RegexMatchSetSummaries where encode = genericEncode options



-- | <p>Returned by <a>ListRegexMatchSets</a>. Each <code>RegexMatchSetSummary</code> object includes the <code>Name</code> and <code>RegexMatchSetId</code> for one <a>RegexMatchSet</a>.</p>
newtype RegexMatchSetSummary = RegexMatchSetSummary 
  { "RegexMatchSetId" :: (ResourceId)
  , "Name" :: (ResourceName)
  }
derive instance newtypeRegexMatchSetSummary :: Newtype RegexMatchSetSummary _
derive instance repGenericRegexMatchSetSummary :: Generic RegexMatchSetSummary _
instance showRegexMatchSetSummary :: Show RegexMatchSetSummary where show = genericShow
instance decodeRegexMatchSetSummary :: Decode RegexMatchSetSummary where decode = genericDecode options
instance encodeRegexMatchSetSummary :: Encode RegexMatchSetSummary where encode = genericEncode options

-- | Constructs RegexMatchSetSummary from required parameters
newRegexMatchSetSummary :: ResourceName -> ResourceId -> RegexMatchSetSummary
newRegexMatchSetSummary _Name _RegexMatchSetId = RegexMatchSetSummary { "Name": _Name, "RegexMatchSetId": _RegexMatchSetId }

-- | Constructs RegexMatchSetSummary's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRegexMatchSetSummary' :: ResourceName -> ResourceId -> ( { "RegexMatchSetId" :: (ResourceId) , "Name" :: (ResourceName) } -> {"RegexMatchSetId" :: (ResourceId) , "Name" :: (ResourceName) } ) -> RegexMatchSetSummary
newRegexMatchSetSummary' _Name _RegexMatchSetId customize = (RegexMatchSetSummary <<< customize) { "Name": _Name, "RegexMatchSetId": _RegexMatchSetId }



-- | <p>In an <a>UpdateRegexMatchSet</a> request, <code>RegexMatchSetUpdate</code> specifies whether to insert or delete a <a>RegexMatchTuple</a> and includes the settings for the <code>RegexMatchTuple</code>.</p>
newtype RegexMatchSetUpdate = RegexMatchSetUpdate 
  { "Action" :: (ChangeAction)
  , "RegexMatchTuple" :: (RegexMatchTuple)
  }
derive instance newtypeRegexMatchSetUpdate :: Newtype RegexMatchSetUpdate _
derive instance repGenericRegexMatchSetUpdate :: Generic RegexMatchSetUpdate _
instance showRegexMatchSetUpdate :: Show RegexMatchSetUpdate where show = genericShow
instance decodeRegexMatchSetUpdate :: Decode RegexMatchSetUpdate where decode = genericDecode options
instance encodeRegexMatchSetUpdate :: Encode RegexMatchSetUpdate where encode = genericEncode options

-- | Constructs RegexMatchSetUpdate from required parameters
newRegexMatchSetUpdate :: ChangeAction -> RegexMatchTuple -> RegexMatchSetUpdate
newRegexMatchSetUpdate _Action _RegexMatchTuple = RegexMatchSetUpdate { "Action": _Action, "RegexMatchTuple": _RegexMatchTuple }

-- | Constructs RegexMatchSetUpdate's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRegexMatchSetUpdate' :: ChangeAction -> RegexMatchTuple -> ( { "Action" :: (ChangeAction) , "RegexMatchTuple" :: (RegexMatchTuple) } -> {"Action" :: (ChangeAction) , "RegexMatchTuple" :: (RegexMatchTuple) } ) -> RegexMatchSetUpdate
newRegexMatchSetUpdate' _Action _RegexMatchTuple customize = (RegexMatchSetUpdate <<< customize) { "Action": _Action, "RegexMatchTuple": _RegexMatchTuple }



newtype RegexMatchSetUpdates = RegexMatchSetUpdates (Array RegexMatchSetUpdate)
derive instance newtypeRegexMatchSetUpdates :: Newtype RegexMatchSetUpdates _
derive instance repGenericRegexMatchSetUpdates :: Generic RegexMatchSetUpdates _
instance showRegexMatchSetUpdates :: Show RegexMatchSetUpdates where show = genericShow
instance decodeRegexMatchSetUpdates :: Decode RegexMatchSetUpdates where decode = genericDecode options
instance encodeRegexMatchSetUpdates :: Encode RegexMatchSetUpdates where encode = genericEncode options



-- | <p>The regular expression pattern that you want AWS WAF to search for in web requests, the location in requests that you want AWS WAF to search, and other settings. Each <code>RegexMatchTuple</code> object contains: </p> <ul> <li> <p>The part of a web request that you want AWS WAF to inspect, such as a query string or the value of the <code>User-Agent</code> header. </p> </li> <li> <p>The identifier of the pattern (a regular expression) that you want AWS WAF to look for. For more information, see <a>RegexPatternSet</a>. </p> </li> <li> <p>Whether to perform any conversions on the request, such as converting it to lowercase, before inspecting it for the specified string.</p> </li> </ul>
newtype RegexMatchTuple = RegexMatchTuple 
  { "FieldToMatch" :: (FieldToMatch)
  , "TextTransformation" :: (TextTransformation)
  , "RegexPatternSetId" :: (ResourceId)
  }
derive instance newtypeRegexMatchTuple :: Newtype RegexMatchTuple _
derive instance repGenericRegexMatchTuple :: Generic RegexMatchTuple _
instance showRegexMatchTuple :: Show RegexMatchTuple where show = genericShow
instance decodeRegexMatchTuple :: Decode RegexMatchTuple where decode = genericDecode options
instance encodeRegexMatchTuple :: Encode RegexMatchTuple where encode = genericEncode options

-- | Constructs RegexMatchTuple from required parameters
newRegexMatchTuple :: FieldToMatch -> ResourceId -> TextTransformation -> RegexMatchTuple
newRegexMatchTuple _FieldToMatch _RegexPatternSetId _TextTransformation = RegexMatchTuple { "FieldToMatch": _FieldToMatch, "RegexPatternSetId": _RegexPatternSetId, "TextTransformation": _TextTransformation }

-- | Constructs RegexMatchTuple's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRegexMatchTuple' :: FieldToMatch -> ResourceId -> TextTransformation -> ( { "FieldToMatch" :: (FieldToMatch) , "TextTransformation" :: (TextTransformation) , "RegexPatternSetId" :: (ResourceId) } -> {"FieldToMatch" :: (FieldToMatch) , "TextTransformation" :: (TextTransformation) , "RegexPatternSetId" :: (ResourceId) } ) -> RegexMatchTuple
newRegexMatchTuple' _FieldToMatch _RegexPatternSetId _TextTransformation customize = (RegexMatchTuple <<< customize) { "FieldToMatch": _FieldToMatch, "RegexPatternSetId": _RegexPatternSetId, "TextTransformation": _TextTransformation }



newtype RegexMatchTuples = RegexMatchTuples (Array RegexMatchTuple)
derive instance newtypeRegexMatchTuples :: Newtype RegexMatchTuples _
derive instance repGenericRegexMatchTuples :: Generic RegexMatchTuples _
instance showRegexMatchTuples :: Show RegexMatchTuples where show = genericShow
instance decodeRegexMatchTuples :: Decode RegexMatchTuples where decode = genericDecode options
instance encodeRegexMatchTuples :: Encode RegexMatchTuples where encode = genericEncode options



-- | <p>The <code>RegexPatternSet</code> specifies the regular expression (regex) pattern that you want AWS WAF to search for, such as <code>B[a@]dB[o0]t</code>. You can then configure AWS WAF to reject those requests.</p>
newtype RegexPatternSet = RegexPatternSet 
  { "RegexPatternSetId" :: (ResourceId)
  , "Name" :: Maybe (ResourceName)
  , "RegexPatternStrings" :: (RegexPatternStrings)
  }
derive instance newtypeRegexPatternSet :: Newtype RegexPatternSet _
derive instance repGenericRegexPatternSet :: Generic RegexPatternSet _
instance showRegexPatternSet :: Show RegexPatternSet where show = genericShow
instance decodeRegexPatternSet :: Decode RegexPatternSet where decode = genericDecode options
instance encodeRegexPatternSet :: Encode RegexPatternSet where encode = genericEncode options

-- | Constructs RegexPatternSet from required parameters
newRegexPatternSet :: ResourceId -> RegexPatternStrings -> RegexPatternSet
newRegexPatternSet _RegexPatternSetId _RegexPatternStrings = RegexPatternSet { "RegexPatternSetId": _RegexPatternSetId, "RegexPatternStrings": _RegexPatternStrings, "Name": Nothing }

-- | Constructs RegexPatternSet's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRegexPatternSet' :: ResourceId -> RegexPatternStrings -> ( { "RegexPatternSetId" :: (ResourceId) , "Name" :: Maybe (ResourceName) , "RegexPatternStrings" :: (RegexPatternStrings) } -> {"RegexPatternSetId" :: (ResourceId) , "Name" :: Maybe (ResourceName) , "RegexPatternStrings" :: (RegexPatternStrings) } ) -> RegexPatternSet
newRegexPatternSet' _RegexPatternSetId _RegexPatternStrings customize = (RegexPatternSet <<< customize) { "RegexPatternSetId": _RegexPatternSetId, "RegexPatternStrings": _RegexPatternStrings, "Name": Nothing }



newtype RegexPatternSetSummaries = RegexPatternSetSummaries (Array RegexPatternSetSummary)
derive instance newtypeRegexPatternSetSummaries :: Newtype RegexPatternSetSummaries _
derive instance repGenericRegexPatternSetSummaries :: Generic RegexPatternSetSummaries _
instance showRegexPatternSetSummaries :: Show RegexPatternSetSummaries where show = genericShow
instance decodeRegexPatternSetSummaries :: Decode RegexPatternSetSummaries where decode = genericDecode options
instance encodeRegexPatternSetSummaries :: Encode RegexPatternSetSummaries where encode = genericEncode options



-- | <p>Returned by <a>ListRegexPatternSets</a>. Each <code>RegexPatternSetSummary</code> object includes the <code>Name</code> and <code>RegexPatternSetId</code> for one <a>RegexPatternSet</a>.</p>
newtype RegexPatternSetSummary = RegexPatternSetSummary 
  { "RegexPatternSetId" :: (ResourceId)
  , "Name" :: (ResourceName)
  }
derive instance newtypeRegexPatternSetSummary :: Newtype RegexPatternSetSummary _
derive instance repGenericRegexPatternSetSummary :: Generic RegexPatternSetSummary _
instance showRegexPatternSetSummary :: Show RegexPatternSetSummary where show = genericShow
instance decodeRegexPatternSetSummary :: Decode RegexPatternSetSummary where decode = genericDecode options
instance encodeRegexPatternSetSummary :: Encode RegexPatternSetSummary where encode = genericEncode options

-- | Constructs RegexPatternSetSummary from required parameters
newRegexPatternSetSummary :: ResourceName -> ResourceId -> RegexPatternSetSummary
newRegexPatternSetSummary _Name _RegexPatternSetId = RegexPatternSetSummary { "Name": _Name, "RegexPatternSetId": _RegexPatternSetId }

-- | Constructs RegexPatternSetSummary's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRegexPatternSetSummary' :: ResourceName -> ResourceId -> ( { "RegexPatternSetId" :: (ResourceId) , "Name" :: (ResourceName) } -> {"RegexPatternSetId" :: (ResourceId) , "Name" :: (ResourceName) } ) -> RegexPatternSetSummary
newRegexPatternSetSummary' _Name _RegexPatternSetId customize = (RegexPatternSetSummary <<< customize) { "Name": _Name, "RegexPatternSetId": _RegexPatternSetId }



-- | <p>In an <a>UpdateRegexPatternSet</a> request, <code>RegexPatternSetUpdate</code> specifies whether to insert or delete a <code>RegexPatternString</code> and includes the settings for the <code>RegexPatternString</code>.</p>
newtype RegexPatternSetUpdate = RegexPatternSetUpdate 
  { "Action" :: (ChangeAction)
  , "RegexPatternString" :: (RegexPatternString)
  }
derive instance newtypeRegexPatternSetUpdate :: Newtype RegexPatternSetUpdate _
derive instance repGenericRegexPatternSetUpdate :: Generic RegexPatternSetUpdate _
instance showRegexPatternSetUpdate :: Show RegexPatternSetUpdate where show = genericShow
instance decodeRegexPatternSetUpdate :: Decode RegexPatternSetUpdate where decode = genericDecode options
instance encodeRegexPatternSetUpdate :: Encode RegexPatternSetUpdate where encode = genericEncode options

-- | Constructs RegexPatternSetUpdate from required parameters
newRegexPatternSetUpdate :: ChangeAction -> RegexPatternString -> RegexPatternSetUpdate
newRegexPatternSetUpdate _Action _RegexPatternString = RegexPatternSetUpdate { "Action": _Action, "RegexPatternString": _RegexPatternString }

-- | Constructs RegexPatternSetUpdate's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRegexPatternSetUpdate' :: ChangeAction -> RegexPatternString -> ( { "Action" :: (ChangeAction) , "RegexPatternString" :: (RegexPatternString) } -> {"Action" :: (ChangeAction) , "RegexPatternString" :: (RegexPatternString) } ) -> RegexPatternSetUpdate
newRegexPatternSetUpdate' _Action _RegexPatternString customize = (RegexPatternSetUpdate <<< customize) { "Action": _Action, "RegexPatternString": _RegexPatternString }



newtype RegexPatternSetUpdates = RegexPatternSetUpdates (Array RegexPatternSetUpdate)
derive instance newtypeRegexPatternSetUpdates :: Newtype RegexPatternSetUpdates _
derive instance repGenericRegexPatternSetUpdates :: Generic RegexPatternSetUpdates _
instance showRegexPatternSetUpdates :: Show RegexPatternSetUpdates where show = genericShow
instance decodeRegexPatternSetUpdates :: Decode RegexPatternSetUpdates where decode = genericDecode options
instance encodeRegexPatternSetUpdates :: Encode RegexPatternSetUpdates where encode = genericEncode options



newtype RegexPatternString = RegexPatternString String
derive instance newtypeRegexPatternString :: Newtype RegexPatternString _
derive instance repGenericRegexPatternString :: Generic RegexPatternString _
instance showRegexPatternString :: Show RegexPatternString where show = genericShow
instance decodeRegexPatternString :: Decode RegexPatternString where decode = genericDecode options
instance encodeRegexPatternString :: Encode RegexPatternString where encode = genericEncode options



newtype RegexPatternStrings = RegexPatternStrings (Array RegexPatternString)
derive instance newtypeRegexPatternStrings :: Newtype RegexPatternStrings _
derive instance repGenericRegexPatternStrings :: Generic RegexPatternStrings _
instance showRegexPatternStrings :: Show RegexPatternStrings where show = genericShow
instance decodeRegexPatternStrings :: Decode RegexPatternStrings where decode = genericDecode options
instance encodeRegexPatternStrings :: Encode RegexPatternStrings where encode = genericEncode options



newtype ResourceArn = ResourceArn String
derive instance newtypeResourceArn :: Newtype ResourceArn _
derive instance repGenericResourceArn :: Generic ResourceArn _
instance showResourceArn :: Show ResourceArn where show = genericShow
instance decodeResourceArn :: Decode ResourceArn where decode = genericDecode options
instance encodeResourceArn :: Encode ResourceArn where encode = genericEncode options



newtype ResourceArns = ResourceArns (Array ResourceArn)
derive instance newtypeResourceArns :: Newtype ResourceArns _
derive instance repGenericResourceArns :: Generic ResourceArns _
instance showResourceArns :: Show ResourceArns where show = genericShow
instance decodeResourceArns :: Decode ResourceArns where decode = genericDecode options
instance encodeResourceArns :: Encode ResourceArns where encode = genericEncode options



newtype ResourceId = ResourceId String
derive instance newtypeResourceId :: Newtype ResourceId _
derive instance repGenericResourceId :: Generic ResourceId _
instance showResourceId :: Show ResourceId where show = genericShow
instance decodeResourceId :: Decode ResourceId where decode = genericDecode options
instance encodeResourceId :: Encode ResourceId where encode = genericEncode options



newtype ResourceName = ResourceName String
derive instance newtypeResourceName :: Newtype ResourceName _
derive instance repGenericResourceName :: Generic ResourceName _
instance showResourceName :: Show ResourceName where show = genericShow
instance decodeResourceName :: Decode ResourceName where decode = genericDecode options
instance encodeResourceName :: Encode ResourceName where encode = genericEncode options



-- | <p>A combination of <a>ByteMatchSet</a>, <a>IPSet</a>, and/or <a>SqlInjectionMatchSet</a> objects that identify the web requests that you want to allow, block, or count. For example, you might create a <code>Rule</code> that includes the following predicates:</p> <ul> <li> <p>An <code>IPSet</code> that causes AWS WAF to search for web requests that originate from the IP address <code>192.0.2.44</code> </p> </li> <li> <p>A <code>ByteMatchSet</code> that causes AWS WAF to search for web requests for which the value of the <code>User-Agent</code> header is <code>BadBot</code>.</p> </li> </ul> <p>To match the settings in this <code>Rule</code>, a request must originate from <code>192.0.2.44</code> AND include a <code>User-Agent</code> header for which the value is <code>BadBot</code>.</p>
newtype Rule = Rule 
  { "RuleId" :: (ResourceId)
  , "Name" :: Maybe (ResourceName)
  , "MetricName" :: Maybe (MetricName)
  , "Predicates" :: (Predicates)
  }
derive instance newtypeRule :: Newtype Rule _
derive instance repGenericRule :: Generic Rule _
instance showRule :: Show Rule where show = genericShow
instance decodeRule :: Decode Rule where decode = genericDecode options
instance encodeRule :: Encode Rule where encode = genericEncode options

-- | Constructs Rule from required parameters
newRule :: Predicates -> ResourceId -> Rule
newRule _Predicates _RuleId = Rule { "Predicates": _Predicates, "RuleId": _RuleId, "MetricName": Nothing, "Name": Nothing }

-- | Constructs Rule's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRule' :: Predicates -> ResourceId -> ( { "RuleId" :: (ResourceId) , "Name" :: Maybe (ResourceName) , "MetricName" :: Maybe (MetricName) , "Predicates" :: (Predicates) } -> {"RuleId" :: (ResourceId) , "Name" :: Maybe (ResourceName) , "MetricName" :: Maybe (MetricName) , "Predicates" :: (Predicates) } ) -> Rule
newRule' _Predicates _RuleId customize = (Rule <<< customize) { "Predicates": _Predicates, "RuleId": _RuleId, "MetricName": Nothing, "Name": Nothing }



-- | <p>A collection of predefined rules that you can add to a web ACL.</p> <p>Rule groups are subject to the following limits:</p> <ul> <li> <p>Three rule groups per account. You can request an increase to this limit by contacting customer support.</p> </li> <li> <p>One rule group per web ACL.</p> </li> <li> <p>Ten rules per rule group.</p> </li> </ul>
newtype RuleGroup = RuleGroup 
  { "RuleGroupId" :: (ResourceId)
  , "Name" :: Maybe (ResourceName)
  , "MetricName" :: Maybe (MetricName)
  }
derive instance newtypeRuleGroup :: Newtype RuleGroup _
derive instance repGenericRuleGroup :: Generic RuleGroup _
instance showRuleGroup :: Show RuleGroup where show = genericShow
instance decodeRuleGroup :: Decode RuleGroup where decode = genericDecode options
instance encodeRuleGroup :: Encode RuleGroup where encode = genericEncode options

-- | Constructs RuleGroup from required parameters
newRuleGroup :: ResourceId -> RuleGroup
newRuleGroup _RuleGroupId = RuleGroup { "RuleGroupId": _RuleGroupId, "MetricName": Nothing, "Name": Nothing }

-- | Constructs RuleGroup's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRuleGroup' :: ResourceId -> ( { "RuleGroupId" :: (ResourceId) , "Name" :: Maybe (ResourceName) , "MetricName" :: Maybe (MetricName) } -> {"RuleGroupId" :: (ResourceId) , "Name" :: Maybe (ResourceName) , "MetricName" :: Maybe (MetricName) } ) -> RuleGroup
newRuleGroup' _RuleGroupId customize = (RuleGroup <<< customize) { "RuleGroupId": _RuleGroupId, "MetricName": Nothing, "Name": Nothing }



newtype RuleGroupSummaries = RuleGroupSummaries (Array RuleGroupSummary)
derive instance newtypeRuleGroupSummaries :: Newtype RuleGroupSummaries _
derive instance repGenericRuleGroupSummaries :: Generic RuleGroupSummaries _
instance showRuleGroupSummaries :: Show RuleGroupSummaries where show = genericShow
instance decodeRuleGroupSummaries :: Decode RuleGroupSummaries where decode = genericDecode options
instance encodeRuleGroupSummaries :: Encode RuleGroupSummaries where encode = genericEncode options



-- | <p>Contains the identifier and the friendly name or description of the <code>RuleGroup</code>.</p>
newtype RuleGroupSummary = RuleGroupSummary 
  { "RuleGroupId" :: (ResourceId)
  , "Name" :: (ResourceName)
  }
derive instance newtypeRuleGroupSummary :: Newtype RuleGroupSummary _
derive instance repGenericRuleGroupSummary :: Generic RuleGroupSummary _
instance showRuleGroupSummary :: Show RuleGroupSummary where show = genericShow
instance decodeRuleGroupSummary :: Decode RuleGroupSummary where decode = genericDecode options
instance encodeRuleGroupSummary :: Encode RuleGroupSummary where encode = genericEncode options

-- | Constructs RuleGroupSummary from required parameters
newRuleGroupSummary :: ResourceName -> ResourceId -> RuleGroupSummary
newRuleGroupSummary _Name _RuleGroupId = RuleGroupSummary { "Name": _Name, "RuleGroupId": _RuleGroupId }

-- | Constructs RuleGroupSummary's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRuleGroupSummary' :: ResourceName -> ResourceId -> ( { "RuleGroupId" :: (ResourceId) , "Name" :: (ResourceName) } -> {"RuleGroupId" :: (ResourceId) , "Name" :: (ResourceName) } ) -> RuleGroupSummary
newRuleGroupSummary' _Name _RuleGroupId customize = (RuleGroupSummary <<< customize) { "Name": _Name, "RuleGroupId": _RuleGroupId }



-- | <p>Specifies an <code>ActivatedRule</code> and indicates whether you want to add it to a <code>RuleGroup</code> or delete it from a <code>RuleGroup</code>.</p>
newtype RuleGroupUpdate = RuleGroupUpdate 
  { "Action" :: (ChangeAction)
  , "ActivatedRule" :: (ActivatedRule)
  }
derive instance newtypeRuleGroupUpdate :: Newtype RuleGroupUpdate _
derive instance repGenericRuleGroupUpdate :: Generic RuleGroupUpdate _
instance showRuleGroupUpdate :: Show RuleGroupUpdate where show = genericShow
instance decodeRuleGroupUpdate :: Decode RuleGroupUpdate where decode = genericDecode options
instance encodeRuleGroupUpdate :: Encode RuleGroupUpdate where encode = genericEncode options

-- | Constructs RuleGroupUpdate from required parameters
newRuleGroupUpdate :: ChangeAction -> ActivatedRule -> RuleGroupUpdate
newRuleGroupUpdate _Action _ActivatedRule = RuleGroupUpdate { "Action": _Action, "ActivatedRule": _ActivatedRule }

-- | Constructs RuleGroupUpdate's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRuleGroupUpdate' :: ChangeAction -> ActivatedRule -> ( { "Action" :: (ChangeAction) , "ActivatedRule" :: (ActivatedRule) } -> {"Action" :: (ChangeAction) , "ActivatedRule" :: (ActivatedRule) } ) -> RuleGroupUpdate
newRuleGroupUpdate' _Action _ActivatedRule customize = (RuleGroupUpdate <<< customize) { "Action": _Action, "ActivatedRule": _ActivatedRule }



newtype RuleGroupUpdates = RuleGroupUpdates (Array RuleGroupUpdate)
derive instance newtypeRuleGroupUpdates :: Newtype RuleGroupUpdates _
derive instance repGenericRuleGroupUpdates :: Generic RuleGroupUpdates _
instance showRuleGroupUpdates :: Show RuleGroupUpdates where show = genericShow
instance decodeRuleGroupUpdates :: Decode RuleGroupUpdates where decode = genericDecode options
instance encodeRuleGroupUpdates :: Encode RuleGroupUpdates where encode = genericEncode options



newtype RulePriority = RulePriority Int
derive instance newtypeRulePriority :: Newtype RulePriority _
derive instance repGenericRulePriority :: Generic RulePriority _
instance showRulePriority :: Show RulePriority where show = genericShow
instance decodeRulePriority :: Decode RulePriority where decode = genericDecode options
instance encodeRulePriority :: Encode RulePriority where encode = genericEncode options



newtype RuleSummaries = RuleSummaries (Array RuleSummary)
derive instance newtypeRuleSummaries :: Newtype RuleSummaries _
derive instance repGenericRuleSummaries :: Generic RuleSummaries _
instance showRuleSummaries :: Show RuleSummaries where show = genericShow
instance decodeRuleSummaries :: Decode RuleSummaries where decode = genericDecode options
instance encodeRuleSummaries :: Encode RuleSummaries where encode = genericEncode options



-- | <p>Contains the identifier and the friendly name or description of the <code>Rule</code>.</p>
newtype RuleSummary = RuleSummary 
  { "RuleId" :: (ResourceId)
  , "Name" :: (ResourceName)
  }
derive instance newtypeRuleSummary :: Newtype RuleSummary _
derive instance repGenericRuleSummary :: Generic RuleSummary _
instance showRuleSummary :: Show RuleSummary where show = genericShow
instance decodeRuleSummary :: Decode RuleSummary where decode = genericDecode options
instance encodeRuleSummary :: Encode RuleSummary where encode = genericEncode options

-- | Constructs RuleSummary from required parameters
newRuleSummary :: ResourceName -> ResourceId -> RuleSummary
newRuleSummary _Name _RuleId = RuleSummary { "Name": _Name, "RuleId": _RuleId }

-- | Constructs RuleSummary's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRuleSummary' :: ResourceName -> ResourceId -> ( { "RuleId" :: (ResourceId) , "Name" :: (ResourceName) } -> {"RuleId" :: (ResourceId) , "Name" :: (ResourceName) } ) -> RuleSummary
newRuleSummary' _Name _RuleId customize = (RuleSummary <<< customize) { "Name": _Name, "RuleId": _RuleId }



-- | <p>Specifies a <code>Predicate</code> (such as an <code>IPSet</code>) and indicates whether you want to add it to a <code>Rule</code> or delete it from a <code>Rule</code>.</p>
newtype RuleUpdate = RuleUpdate 
  { "Action" :: (ChangeAction)
  , "Predicate" :: (Predicate)
  }
derive instance newtypeRuleUpdate :: Newtype RuleUpdate _
derive instance repGenericRuleUpdate :: Generic RuleUpdate _
instance showRuleUpdate :: Show RuleUpdate where show = genericShow
instance decodeRuleUpdate :: Decode RuleUpdate where decode = genericDecode options
instance encodeRuleUpdate :: Encode RuleUpdate where encode = genericEncode options

-- | Constructs RuleUpdate from required parameters
newRuleUpdate :: ChangeAction -> Predicate -> RuleUpdate
newRuleUpdate _Action _Predicate = RuleUpdate { "Action": _Action, "Predicate": _Predicate }

-- | Constructs RuleUpdate's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRuleUpdate' :: ChangeAction -> Predicate -> ( { "Action" :: (ChangeAction) , "Predicate" :: (Predicate) } -> {"Action" :: (ChangeAction) , "Predicate" :: (Predicate) } ) -> RuleUpdate
newRuleUpdate' _Action _Predicate customize = (RuleUpdate <<< customize) { "Action": _Action, "Predicate": _Predicate }



newtype RuleUpdates = RuleUpdates (Array RuleUpdate)
derive instance newtypeRuleUpdates :: Newtype RuleUpdates _
derive instance repGenericRuleUpdates :: Generic RuleUpdates _
instance showRuleUpdates :: Show RuleUpdates where show = genericShow
instance decodeRuleUpdates :: Decode RuleUpdates where decode = genericDecode options
instance encodeRuleUpdates :: Encode RuleUpdates where encode = genericEncode options



newtype SampleWeight = SampleWeight Number
derive instance newtypeSampleWeight :: Newtype SampleWeight _
derive instance repGenericSampleWeight :: Generic SampleWeight _
instance showSampleWeight :: Show SampleWeight where show = genericShow
instance decodeSampleWeight :: Decode SampleWeight where decode = genericDecode options
instance encodeSampleWeight :: Encode SampleWeight where encode = genericEncode options



-- | <p>The response from a <a>GetSampledRequests</a> request includes a <code>SampledHTTPRequests</code> complex type that appears as <code>SampledRequests</code> in the response syntax. <code>SampledHTTPRequests</code> contains one <code>SampledHTTPRequest</code> object for each web request that is returned by <code>GetSampledRequests</code>.</p>
newtype SampledHTTPRequest = SampledHTTPRequest 
  { "Request" :: (HTTPRequest)
  , "Weight" :: (SampleWeight)
  , "Timestamp" :: Maybe (Types.Timestamp)
  , "Action" :: Maybe (Action)
  , "RuleWithinRuleGroup" :: Maybe (ResourceId)
  }
derive instance newtypeSampledHTTPRequest :: Newtype SampledHTTPRequest _
derive instance repGenericSampledHTTPRequest :: Generic SampledHTTPRequest _
instance showSampledHTTPRequest :: Show SampledHTTPRequest where show = genericShow
instance decodeSampledHTTPRequest :: Decode SampledHTTPRequest where decode = genericDecode options
instance encodeSampledHTTPRequest :: Encode SampledHTTPRequest where encode = genericEncode options

-- | Constructs SampledHTTPRequest from required parameters
newSampledHTTPRequest :: HTTPRequest -> SampleWeight -> SampledHTTPRequest
newSampledHTTPRequest _Request _Weight = SampledHTTPRequest { "Request": _Request, "Weight": _Weight, "Action": Nothing, "RuleWithinRuleGroup": Nothing, "Timestamp": Nothing }

-- | Constructs SampledHTTPRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSampledHTTPRequest' :: HTTPRequest -> SampleWeight -> ( { "Request" :: (HTTPRequest) , "Weight" :: (SampleWeight) , "Timestamp" :: Maybe (Types.Timestamp) , "Action" :: Maybe (Action) , "RuleWithinRuleGroup" :: Maybe (ResourceId) } -> {"Request" :: (HTTPRequest) , "Weight" :: (SampleWeight) , "Timestamp" :: Maybe (Types.Timestamp) , "Action" :: Maybe (Action) , "RuleWithinRuleGroup" :: Maybe (ResourceId) } ) -> SampledHTTPRequest
newSampledHTTPRequest' _Request _Weight customize = (SampledHTTPRequest <<< customize) { "Request": _Request, "Weight": _Weight, "Action": Nothing, "RuleWithinRuleGroup": Nothing, "Timestamp": Nothing }



newtype SampledHTTPRequests = SampledHTTPRequests (Array SampledHTTPRequest)
derive instance newtypeSampledHTTPRequests :: Newtype SampledHTTPRequests _
derive instance repGenericSampledHTTPRequests :: Generic SampledHTTPRequests _
instance showSampledHTTPRequests :: Show SampledHTTPRequests where show = genericShow
instance decodeSampledHTTPRequests :: Decode SampledHTTPRequests where decode = genericDecode options
instance encodeSampledHTTPRequests :: Encode SampledHTTPRequests where encode = genericEncode options



newtype Size = Size Number
derive instance newtypeSize :: Newtype Size _
derive instance repGenericSize :: Generic Size _
instance showSize :: Show Size where show = genericShow
instance decodeSize :: Decode Size where decode = genericDecode options
instance encodeSize :: Encode Size where encode = genericEncode options



-- | <p>Specifies a constraint on the size of a part of the web request. AWS WAF uses the <code>Size</code>, <code>ComparisonOperator</code>, and <code>FieldToMatch</code> to build an expression in the form of "<code>Size</code> <code>ComparisonOperator</code> size in bytes of <code>FieldToMatch</code>". If that expression is true, the <code>SizeConstraint</code> is considered to match.</p>
newtype SizeConstraint = SizeConstraint 
  { "FieldToMatch" :: (FieldToMatch)
  , "TextTransformation" :: (TextTransformation)
  , "ComparisonOperator" :: (ComparisonOperator)
  , "Size" :: (Size)
  }
derive instance newtypeSizeConstraint :: Newtype SizeConstraint _
derive instance repGenericSizeConstraint :: Generic SizeConstraint _
instance showSizeConstraint :: Show SizeConstraint where show = genericShow
instance decodeSizeConstraint :: Decode SizeConstraint where decode = genericDecode options
instance encodeSizeConstraint :: Encode SizeConstraint where encode = genericEncode options

-- | Constructs SizeConstraint from required parameters
newSizeConstraint :: ComparisonOperator -> FieldToMatch -> Size -> TextTransformation -> SizeConstraint
newSizeConstraint _ComparisonOperator _FieldToMatch _Size _TextTransformation = SizeConstraint { "ComparisonOperator": _ComparisonOperator, "FieldToMatch": _FieldToMatch, "Size": _Size, "TextTransformation": _TextTransformation }

-- | Constructs SizeConstraint's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSizeConstraint' :: ComparisonOperator -> FieldToMatch -> Size -> TextTransformation -> ( { "FieldToMatch" :: (FieldToMatch) , "TextTransformation" :: (TextTransformation) , "ComparisonOperator" :: (ComparisonOperator) , "Size" :: (Size) } -> {"FieldToMatch" :: (FieldToMatch) , "TextTransformation" :: (TextTransformation) , "ComparisonOperator" :: (ComparisonOperator) , "Size" :: (Size) } ) -> SizeConstraint
newSizeConstraint' _ComparisonOperator _FieldToMatch _Size _TextTransformation customize = (SizeConstraint <<< customize) { "ComparisonOperator": _ComparisonOperator, "FieldToMatch": _FieldToMatch, "Size": _Size, "TextTransformation": _TextTransformation }



-- | <p>A complex type that contains <code>SizeConstraint</code> objects, which specify the parts of web requests that you want AWS WAF to inspect the size of. If a <code>SizeConstraintSet</code> contains more than one <code>SizeConstraint</code> object, a request only needs to match one constraint to be considered a match.</p>
newtype SizeConstraintSet = SizeConstraintSet 
  { "SizeConstraintSetId" :: (ResourceId)
  , "Name" :: Maybe (ResourceName)
  , "SizeConstraints" :: (SizeConstraints)
  }
derive instance newtypeSizeConstraintSet :: Newtype SizeConstraintSet _
derive instance repGenericSizeConstraintSet :: Generic SizeConstraintSet _
instance showSizeConstraintSet :: Show SizeConstraintSet where show = genericShow
instance decodeSizeConstraintSet :: Decode SizeConstraintSet where decode = genericDecode options
instance encodeSizeConstraintSet :: Encode SizeConstraintSet where encode = genericEncode options

-- | Constructs SizeConstraintSet from required parameters
newSizeConstraintSet :: ResourceId -> SizeConstraints -> SizeConstraintSet
newSizeConstraintSet _SizeConstraintSetId _SizeConstraints = SizeConstraintSet { "SizeConstraintSetId": _SizeConstraintSetId, "SizeConstraints": _SizeConstraints, "Name": Nothing }

-- | Constructs SizeConstraintSet's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSizeConstraintSet' :: ResourceId -> SizeConstraints -> ( { "SizeConstraintSetId" :: (ResourceId) , "Name" :: Maybe (ResourceName) , "SizeConstraints" :: (SizeConstraints) } -> {"SizeConstraintSetId" :: (ResourceId) , "Name" :: Maybe (ResourceName) , "SizeConstraints" :: (SizeConstraints) } ) -> SizeConstraintSet
newSizeConstraintSet' _SizeConstraintSetId _SizeConstraints customize = (SizeConstraintSet <<< customize) { "SizeConstraintSetId": _SizeConstraintSetId, "SizeConstraints": _SizeConstraints, "Name": Nothing }



newtype SizeConstraintSetSummaries = SizeConstraintSetSummaries (Array SizeConstraintSetSummary)
derive instance newtypeSizeConstraintSetSummaries :: Newtype SizeConstraintSetSummaries _
derive instance repGenericSizeConstraintSetSummaries :: Generic SizeConstraintSetSummaries _
instance showSizeConstraintSetSummaries :: Show SizeConstraintSetSummaries where show = genericShow
instance decodeSizeConstraintSetSummaries :: Decode SizeConstraintSetSummaries where decode = genericDecode options
instance encodeSizeConstraintSetSummaries :: Encode SizeConstraintSetSummaries where encode = genericEncode options



-- | <p>The <code>Id</code> and <code>Name</code> of a <code>SizeConstraintSet</code>.</p>
newtype SizeConstraintSetSummary = SizeConstraintSetSummary 
  { "SizeConstraintSetId" :: (ResourceId)
  , "Name" :: (ResourceName)
  }
derive instance newtypeSizeConstraintSetSummary :: Newtype SizeConstraintSetSummary _
derive instance repGenericSizeConstraintSetSummary :: Generic SizeConstraintSetSummary _
instance showSizeConstraintSetSummary :: Show SizeConstraintSetSummary where show = genericShow
instance decodeSizeConstraintSetSummary :: Decode SizeConstraintSetSummary where decode = genericDecode options
instance encodeSizeConstraintSetSummary :: Encode SizeConstraintSetSummary where encode = genericEncode options

-- | Constructs SizeConstraintSetSummary from required parameters
newSizeConstraintSetSummary :: ResourceName -> ResourceId -> SizeConstraintSetSummary
newSizeConstraintSetSummary _Name _SizeConstraintSetId = SizeConstraintSetSummary { "Name": _Name, "SizeConstraintSetId": _SizeConstraintSetId }

-- | Constructs SizeConstraintSetSummary's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSizeConstraintSetSummary' :: ResourceName -> ResourceId -> ( { "SizeConstraintSetId" :: (ResourceId) , "Name" :: (ResourceName) } -> {"SizeConstraintSetId" :: (ResourceId) , "Name" :: (ResourceName) } ) -> SizeConstraintSetSummary
newSizeConstraintSetSummary' _Name _SizeConstraintSetId customize = (SizeConstraintSetSummary <<< customize) { "Name": _Name, "SizeConstraintSetId": _SizeConstraintSetId }



-- | <p>Specifies the part of a web request that you want to inspect the size of and indicates whether you want to add the specification to a <a>SizeConstraintSet</a> or delete it from a <code>SizeConstraintSet</code>.</p>
newtype SizeConstraintSetUpdate = SizeConstraintSetUpdate 
  { "Action" :: (ChangeAction)
  , "SizeConstraint" :: (SizeConstraint)
  }
derive instance newtypeSizeConstraintSetUpdate :: Newtype SizeConstraintSetUpdate _
derive instance repGenericSizeConstraintSetUpdate :: Generic SizeConstraintSetUpdate _
instance showSizeConstraintSetUpdate :: Show SizeConstraintSetUpdate where show = genericShow
instance decodeSizeConstraintSetUpdate :: Decode SizeConstraintSetUpdate where decode = genericDecode options
instance encodeSizeConstraintSetUpdate :: Encode SizeConstraintSetUpdate where encode = genericEncode options

-- | Constructs SizeConstraintSetUpdate from required parameters
newSizeConstraintSetUpdate :: ChangeAction -> SizeConstraint -> SizeConstraintSetUpdate
newSizeConstraintSetUpdate _Action _SizeConstraint = SizeConstraintSetUpdate { "Action": _Action, "SizeConstraint": _SizeConstraint }

-- | Constructs SizeConstraintSetUpdate's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSizeConstraintSetUpdate' :: ChangeAction -> SizeConstraint -> ( { "Action" :: (ChangeAction) , "SizeConstraint" :: (SizeConstraint) } -> {"Action" :: (ChangeAction) , "SizeConstraint" :: (SizeConstraint) } ) -> SizeConstraintSetUpdate
newSizeConstraintSetUpdate' _Action _SizeConstraint customize = (SizeConstraintSetUpdate <<< customize) { "Action": _Action, "SizeConstraint": _SizeConstraint }



newtype SizeConstraintSetUpdates = SizeConstraintSetUpdates (Array SizeConstraintSetUpdate)
derive instance newtypeSizeConstraintSetUpdates :: Newtype SizeConstraintSetUpdates _
derive instance repGenericSizeConstraintSetUpdates :: Generic SizeConstraintSetUpdates _
instance showSizeConstraintSetUpdates :: Show SizeConstraintSetUpdates where show = genericShow
instance decodeSizeConstraintSetUpdates :: Decode SizeConstraintSetUpdates where decode = genericDecode options
instance encodeSizeConstraintSetUpdates :: Encode SizeConstraintSetUpdates where encode = genericEncode options



newtype SizeConstraints = SizeConstraints (Array SizeConstraint)
derive instance newtypeSizeConstraints :: Newtype SizeConstraints _
derive instance repGenericSizeConstraints :: Generic SizeConstraints _
instance showSizeConstraints :: Show SizeConstraints where show = genericShow
instance decodeSizeConstraints :: Decode SizeConstraints where decode = genericDecode options
instance encodeSizeConstraints :: Encode SizeConstraints where encode = genericEncode options



-- | <p>A complex type that contains <code>SqlInjectionMatchTuple</code> objects, which specify the parts of web requests that you want AWS WAF to inspect for snippets of malicious SQL code and, if you want AWS WAF to inspect a header, the name of the header. If a <code>SqlInjectionMatchSet</code> contains more than one <code>SqlInjectionMatchTuple</code> object, a request needs to include snippets of SQL code in only one of the specified parts of the request to be considered a match.</p>
newtype SqlInjectionMatchSet = SqlInjectionMatchSet 
  { "SqlInjectionMatchSetId" :: (ResourceId)
  , "Name" :: Maybe (ResourceName)
  , "SqlInjectionMatchTuples" :: (SqlInjectionMatchTuples)
  }
derive instance newtypeSqlInjectionMatchSet :: Newtype SqlInjectionMatchSet _
derive instance repGenericSqlInjectionMatchSet :: Generic SqlInjectionMatchSet _
instance showSqlInjectionMatchSet :: Show SqlInjectionMatchSet where show = genericShow
instance decodeSqlInjectionMatchSet :: Decode SqlInjectionMatchSet where decode = genericDecode options
instance encodeSqlInjectionMatchSet :: Encode SqlInjectionMatchSet where encode = genericEncode options

-- | Constructs SqlInjectionMatchSet from required parameters
newSqlInjectionMatchSet :: ResourceId -> SqlInjectionMatchTuples -> SqlInjectionMatchSet
newSqlInjectionMatchSet _SqlInjectionMatchSetId _SqlInjectionMatchTuples = SqlInjectionMatchSet { "SqlInjectionMatchSetId": _SqlInjectionMatchSetId, "SqlInjectionMatchTuples": _SqlInjectionMatchTuples, "Name": Nothing }

-- | Constructs SqlInjectionMatchSet's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSqlInjectionMatchSet' :: ResourceId -> SqlInjectionMatchTuples -> ( { "SqlInjectionMatchSetId" :: (ResourceId) , "Name" :: Maybe (ResourceName) , "SqlInjectionMatchTuples" :: (SqlInjectionMatchTuples) } -> {"SqlInjectionMatchSetId" :: (ResourceId) , "Name" :: Maybe (ResourceName) , "SqlInjectionMatchTuples" :: (SqlInjectionMatchTuples) } ) -> SqlInjectionMatchSet
newSqlInjectionMatchSet' _SqlInjectionMatchSetId _SqlInjectionMatchTuples customize = (SqlInjectionMatchSet <<< customize) { "SqlInjectionMatchSetId": _SqlInjectionMatchSetId, "SqlInjectionMatchTuples": _SqlInjectionMatchTuples, "Name": Nothing }



newtype SqlInjectionMatchSetSummaries = SqlInjectionMatchSetSummaries (Array SqlInjectionMatchSetSummary)
derive instance newtypeSqlInjectionMatchSetSummaries :: Newtype SqlInjectionMatchSetSummaries _
derive instance repGenericSqlInjectionMatchSetSummaries :: Generic SqlInjectionMatchSetSummaries _
instance showSqlInjectionMatchSetSummaries :: Show SqlInjectionMatchSetSummaries where show = genericShow
instance decodeSqlInjectionMatchSetSummaries :: Decode SqlInjectionMatchSetSummaries where decode = genericDecode options
instance encodeSqlInjectionMatchSetSummaries :: Encode SqlInjectionMatchSetSummaries where encode = genericEncode options



-- | <p>The <code>Id</code> and <code>Name</code> of a <code>SqlInjectionMatchSet</code>.</p>
newtype SqlInjectionMatchSetSummary = SqlInjectionMatchSetSummary 
  { "SqlInjectionMatchSetId" :: (ResourceId)
  , "Name" :: (ResourceName)
  }
derive instance newtypeSqlInjectionMatchSetSummary :: Newtype SqlInjectionMatchSetSummary _
derive instance repGenericSqlInjectionMatchSetSummary :: Generic SqlInjectionMatchSetSummary _
instance showSqlInjectionMatchSetSummary :: Show SqlInjectionMatchSetSummary where show = genericShow
instance decodeSqlInjectionMatchSetSummary :: Decode SqlInjectionMatchSetSummary where decode = genericDecode options
instance encodeSqlInjectionMatchSetSummary :: Encode SqlInjectionMatchSetSummary where encode = genericEncode options

-- | Constructs SqlInjectionMatchSetSummary from required parameters
newSqlInjectionMatchSetSummary :: ResourceName -> ResourceId -> SqlInjectionMatchSetSummary
newSqlInjectionMatchSetSummary _Name _SqlInjectionMatchSetId = SqlInjectionMatchSetSummary { "Name": _Name, "SqlInjectionMatchSetId": _SqlInjectionMatchSetId }

-- | Constructs SqlInjectionMatchSetSummary's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSqlInjectionMatchSetSummary' :: ResourceName -> ResourceId -> ( { "SqlInjectionMatchSetId" :: (ResourceId) , "Name" :: (ResourceName) } -> {"SqlInjectionMatchSetId" :: (ResourceId) , "Name" :: (ResourceName) } ) -> SqlInjectionMatchSetSummary
newSqlInjectionMatchSetSummary' _Name _SqlInjectionMatchSetId customize = (SqlInjectionMatchSetSummary <<< customize) { "Name": _Name, "SqlInjectionMatchSetId": _SqlInjectionMatchSetId }



-- | <p>Specifies the part of a web request that you want to inspect for snippets of malicious SQL code and indicates whether you want to add the specification to a <a>SqlInjectionMatchSet</a> or delete it from a <code>SqlInjectionMatchSet</code>.</p>
newtype SqlInjectionMatchSetUpdate = SqlInjectionMatchSetUpdate 
  { "Action" :: (ChangeAction)
  , "SqlInjectionMatchTuple" :: (SqlInjectionMatchTuple)
  }
derive instance newtypeSqlInjectionMatchSetUpdate :: Newtype SqlInjectionMatchSetUpdate _
derive instance repGenericSqlInjectionMatchSetUpdate :: Generic SqlInjectionMatchSetUpdate _
instance showSqlInjectionMatchSetUpdate :: Show SqlInjectionMatchSetUpdate where show = genericShow
instance decodeSqlInjectionMatchSetUpdate :: Decode SqlInjectionMatchSetUpdate where decode = genericDecode options
instance encodeSqlInjectionMatchSetUpdate :: Encode SqlInjectionMatchSetUpdate where encode = genericEncode options

-- | Constructs SqlInjectionMatchSetUpdate from required parameters
newSqlInjectionMatchSetUpdate :: ChangeAction -> SqlInjectionMatchTuple -> SqlInjectionMatchSetUpdate
newSqlInjectionMatchSetUpdate _Action _SqlInjectionMatchTuple = SqlInjectionMatchSetUpdate { "Action": _Action, "SqlInjectionMatchTuple": _SqlInjectionMatchTuple }

-- | Constructs SqlInjectionMatchSetUpdate's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSqlInjectionMatchSetUpdate' :: ChangeAction -> SqlInjectionMatchTuple -> ( { "Action" :: (ChangeAction) , "SqlInjectionMatchTuple" :: (SqlInjectionMatchTuple) } -> {"Action" :: (ChangeAction) , "SqlInjectionMatchTuple" :: (SqlInjectionMatchTuple) } ) -> SqlInjectionMatchSetUpdate
newSqlInjectionMatchSetUpdate' _Action _SqlInjectionMatchTuple customize = (SqlInjectionMatchSetUpdate <<< customize) { "Action": _Action, "SqlInjectionMatchTuple": _SqlInjectionMatchTuple }



newtype SqlInjectionMatchSetUpdates = SqlInjectionMatchSetUpdates (Array SqlInjectionMatchSetUpdate)
derive instance newtypeSqlInjectionMatchSetUpdates :: Newtype SqlInjectionMatchSetUpdates _
derive instance repGenericSqlInjectionMatchSetUpdates :: Generic SqlInjectionMatchSetUpdates _
instance showSqlInjectionMatchSetUpdates :: Show SqlInjectionMatchSetUpdates where show = genericShow
instance decodeSqlInjectionMatchSetUpdates :: Decode SqlInjectionMatchSetUpdates where decode = genericDecode options
instance encodeSqlInjectionMatchSetUpdates :: Encode SqlInjectionMatchSetUpdates where encode = genericEncode options



-- | <p>Specifies the part of a web request that you want AWS WAF to inspect for snippets of malicious SQL code and, if you want AWS WAF to inspect a header, the name of the header.</p>
newtype SqlInjectionMatchTuple = SqlInjectionMatchTuple 
  { "FieldToMatch" :: (FieldToMatch)
  , "TextTransformation" :: (TextTransformation)
  }
derive instance newtypeSqlInjectionMatchTuple :: Newtype SqlInjectionMatchTuple _
derive instance repGenericSqlInjectionMatchTuple :: Generic SqlInjectionMatchTuple _
instance showSqlInjectionMatchTuple :: Show SqlInjectionMatchTuple where show = genericShow
instance decodeSqlInjectionMatchTuple :: Decode SqlInjectionMatchTuple where decode = genericDecode options
instance encodeSqlInjectionMatchTuple :: Encode SqlInjectionMatchTuple where encode = genericEncode options

-- | Constructs SqlInjectionMatchTuple from required parameters
newSqlInjectionMatchTuple :: FieldToMatch -> TextTransformation -> SqlInjectionMatchTuple
newSqlInjectionMatchTuple _FieldToMatch _TextTransformation = SqlInjectionMatchTuple { "FieldToMatch": _FieldToMatch, "TextTransformation": _TextTransformation }

-- | Constructs SqlInjectionMatchTuple's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSqlInjectionMatchTuple' :: FieldToMatch -> TextTransformation -> ( { "FieldToMatch" :: (FieldToMatch) , "TextTransformation" :: (TextTransformation) } -> {"FieldToMatch" :: (FieldToMatch) , "TextTransformation" :: (TextTransformation) } ) -> SqlInjectionMatchTuple
newSqlInjectionMatchTuple' _FieldToMatch _TextTransformation customize = (SqlInjectionMatchTuple <<< customize) { "FieldToMatch": _FieldToMatch, "TextTransformation": _TextTransformation }



newtype SqlInjectionMatchTuples = SqlInjectionMatchTuples (Array SqlInjectionMatchTuple)
derive instance newtypeSqlInjectionMatchTuples :: Newtype SqlInjectionMatchTuples _
derive instance repGenericSqlInjectionMatchTuples :: Generic SqlInjectionMatchTuples _
instance showSqlInjectionMatchTuples :: Show SqlInjectionMatchTuples where show = genericShow
instance decodeSqlInjectionMatchTuples :: Decode SqlInjectionMatchTuples where decode = genericDecode options
instance encodeSqlInjectionMatchTuples :: Encode SqlInjectionMatchTuples where encode = genericEncode options



newtype SubscribedRuleGroupSummaries = SubscribedRuleGroupSummaries (Array SubscribedRuleGroupSummary)
derive instance newtypeSubscribedRuleGroupSummaries :: Newtype SubscribedRuleGroupSummaries _
derive instance repGenericSubscribedRuleGroupSummaries :: Generic SubscribedRuleGroupSummaries _
instance showSubscribedRuleGroupSummaries :: Show SubscribedRuleGroupSummaries where show = genericShow
instance decodeSubscribedRuleGroupSummaries :: Decode SubscribedRuleGroupSummaries where decode = genericDecode options
instance encodeSubscribedRuleGroupSummaries :: Encode SubscribedRuleGroupSummaries where encode = genericEncode options



-- | <p>A summary of the rule groups you are subscribed to.</p>
newtype SubscribedRuleGroupSummary = SubscribedRuleGroupSummary 
  { "RuleGroupId" :: (ResourceId)
  , "Name" :: (ResourceName)
  , "MetricName" :: (MetricName)
  }
derive instance newtypeSubscribedRuleGroupSummary :: Newtype SubscribedRuleGroupSummary _
derive instance repGenericSubscribedRuleGroupSummary :: Generic SubscribedRuleGroupSummary _
instance showSubscribedRuleGroupSummary :: Show SubscribedRuleGroupSummary where show = genericShow
instance decodeSubscribedRuleGroupSummary :: Decode SubscribedRuleGroupSummary where decode = genericDecode options
instance encodeSubscribedRuleGroupSummary :: Encode SubscribedRuleGroupSummary where encode = genericEncode options

-- | Constructs SubscribedRuleGroupSummary from required parameters
newSubscribedRuleGroupSummary :: MetricName -> ResourceName -> ResourceId -> SubscribedRuleGroupSummary
newSubscribedRuleGroupSummary _MetricName _Name _RuleGroupId = SubscribedRuleGroupSummary { "MetricName": _MetricName, "Name": _Name, "RuleGroupId": _RuleGroupId }

-- | Constructs SubscribedRuleGroupSummary's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSubscribedRuleGroupSummary' :: MetricName -> ResourceName -> ResourceId -> ( { "RuleGroupId" :: (ResourceId) , "Name" :: (ResourceName) , "MetricName" :: (MetricName) } -> {"RuleGroupId" :: (ResourceId) , "Name" :: (ResourceName) , "MetricName" :: (MetricName) } ) -> SubscribedRuleGroupSummary
newSubscribedRuleGroupSummary' _MetricName _Name _RuleGroupId customize = (SubscribedRuleGroupSummary <<< customize) { "MetricName": _MetricName, "Name": _Name, "RuleGroupId": _RuleGroupId }



newtype TextTransformation = TextTransformation String
derive instance newtypeTextTransformation :: Newtype TextTransformation _
derive instance repGenericTextTransformation :: Generic TextTransformation _
instance showTextTransformation :: Show TextTransformation where show = genericShow
instance decodeTextTransformation :: Decode TextTransformation where decode = genericDecode options
instance encodeTextTransformation :: Encode TextTransformation where encode = genericEncode options



-- | <p>In a <a>GetSampledRequests</a> request, the <code>StartTime</code> and <code>EndTime</code> objects specify the time range for which you want AWS WAF to return a sample of web requests.</p> <p>In a <a>GetSampledRequests</a> response, the <code>StartTime</code> and <code>EndTime</code> objects specify the time range for which AWS WAF actually returned a sample of web requests. AWS WAF gets the specified number of requests from among the first 5,000 requests that your AWS resource receives during the specified time period. If your resource receives more than 5,000 requests during that period, AWS WAF stops sampling after the 5,000th request. In that case, <code>EndTime</code> is the time that AWS WAF received the 5,000th request. </p>
newtype TimeWindow = TimeWindow 
  { "StartTime" :: (Types.Timestamp)
  , "EndTime" :: (Types.Timestamp)
  }
derive instance newtypeTimeWindow :: Newtype TimeWindow _
derive instance repGenericTimeWindow :: Generic TimeWindow _
instance showTimeWindow :: Show TimeWindow where show = genericShow
instance decodeTimeWindow :: Decode TimeWindow where decode = genericDecode options
instance encodeTimeWindow :: Encode TimeWindow where encode = genericEncode options

-- | Constructs TimeWindow from required parameters
newTimeWindow :: Types.Timestamp -> Types.Timestamp -> TimeWindow
newTimeWindow _EndTime _StartTime = TimeWindow { "EndTime": _EndTime, "StartTime": _StartTime }

-- | Constructs TimeWindow's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTimeWindow' :: Types.Timestamp -> Types.Timestamp -> ( { "StartTime" :: (Types.Timestamp) , "EndTime" :: (Types.Timestamp) } -> {"StartTime" :: (Types.Timestamp) , "EndTime" :: (Types.Timestamp) } ) -> TimeWindow
newTimeWindow' _EndTime _StartTime customize = (TimeWindow <<< customize) { "EndTime": _EndTime, "StartTime": _StartTime }



newtype URIString = URIString String
derive instance newtypeURIString :: Newtype URIString _
derive instance repGenericURIString :: Generic URIString _
instance showURIString :: Show URIString where show = genericShow
instance decodeURIString :: Decode URIString where decode = genericDecode options
instance encodeURIString :: Encode URIString where encode = genericEncode options



newtype UpdateByteMatchSetRequest = UpdateByteMatchSetRequest 
  { "ByteMatchSetId" :: (ResourceId)
  , "ChangeToken" :: (ChangeToken)
  , "Updates" :: (ByteMatchSetUpdates)
  }
derive instance newtypeUpdateByteMatchSetRequest :: Newtype UpdateByteMatchSetRequest _
derive instance repGenericUpdateByteMatchSetRequest :: Generic UpdateByteMatchSetRequest _
instance showUpdateByteMatchSetRequest :: Show UpdateByteMatchSetRequest where show = genericShow
instance decodeUpdateByteMatchSetRequest :: Decode UpdateByteMatchSetRequest where decode = genericDecode options
instance encodeUpdateByteMatchSetRequest :: Encode UpdateByteMatchSetRequest where encode = genericEncode options

-- | Constructs UpdateByteMatchSetRequest from required parameters
newUpdateByteMatchSetRequest :: ResourceId -> ChangeToken -> ByteMatchSetUpdates -> UpdateByteMatchSetRequest
newUpdateByteMatchSetRequest _ByteMatchSetId _ChangeToken _Updates = UpdateByteMatchSetRequest { "ByteMatchSetId": _ByteMatchSetId, "ChangeToken": _ChangeToken, "Updates": _Updates }

-- | Constructs UpdateByteMatchSetRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateByteMatchSetRequest' :: ResourceId -> ChangeToken -> ByteMatchSetUpdates -> ( { "ByteMatchSetId" :: (ResourceId) , "ChangeToken" :: (ChangeToken) , "Updates" :: (ByteMatchSetUpdates) } -> {"ByteMatchSetId" :: (ResourceId) , "ChangeToken" :: (ChangeToken) , "Updates" :: (ByteMatchSetUpdates) } ) -> UpdateByteMatchSetRequest
newUpdateByteMatchSetRequest' _ByteMatchSetId _ChangeToken _Updates customize = (UpdateByteMatchSetRequest <<< customize) { "ByteMatchSetId": _ByteMatchSetId, "ChangeToken": _ChangeToken, "Updates": _Updates }



newtype UpdateByteMatchSetResponse = UpdateByteMatchSetResponse 
  { "ChangeToken" :: Maybe (ChangeToken)
  }
derive instance newtypeUpdateByteMatchSetResponse :: Newtype UpdateByteMatchSetResponse _
derive instance repGenericUpdateByteMatchSetResponse :: Generic UpdateByteMatchSetResponse _
instance showUpdateByteMatchSetResponse :: Show UpdateByteMatchSetResponse where show = genericShow
instance decodeUpdateByteMatchSetResponse :: Decode UpdateByteMatchSetResponse where decode = genericDecode options
instance encodeUpdateByteMatchSetResponse :: Encode UpdateByteMatchSetResponse where encode = genericEncode options

-- | Constructs UpdateByteMatchSetResponse from required parameters
newUpdateByteMatchSetResponse :: UpdateByteMatchSetResponse
newUpdateByteMatchSetResponse  = UpdateByteMatchSetResponse { "ChangeToken": Nothing }

-- | Constructs UpdateByteMatchSetResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateByteMatchSetResponse' :: ( { "ChangeToken" :: Maybe (ChangeToken) } -> {"ChangeToken" :: Maybe (ChangeToken) } ) -> UpdateByteMatchSetResponse
newUpdateByteMatchSetResponse'  customize = (UpdateByteMatchSetResponse <<< customize) { "ChangeToken": Nothing }



newtype UpdateGeoMatchSetRequest = UpdateGeoMatchSetRequest 
  { "GeoMatchSetId" :: (ResourceId)
  , "ChangeToken" :: (ChangeToken)
  , "Updates" :: (GeoMatchSetUpdates)
  }
derive instance newtypeUpdateGeoMatchSetRequest :: Newtype UpdateGeoMatchSetRequest _
derive instance repGenericUpdateGeoMatchSetRequest :: Generic UpdateGeoMatchSetRequest _
instance showUpdateGeoMatchSetRequest :: Show UpdateGeoMatchSetRequest where show = genericShow
instance decodeUpdateGeoMatchSetRequest :: Decode UpdateGeoMatchSetRequest where decode = genericDecode options
instance encodeUpdateGeoMatchSetRequest :: Encode UpdateGeoMatchSetRequest where encode = genericEncode options

-- | Constructs UpdateGeoMatchSetRequest from required parameters
newUpdateGeoMatchSetRequest :: ChangeToken -> ResourceId -> GeoMatchSetUpdates -> UpdateGeoMatchSetRequest
newUpdateGeoMatchSetRequest _ChangeToken _GeoMatchSetId _Updates = UpdateGeoMatchSetRequest { "ChangeToken": _ChangeToken, "GeoMatchSetId": _GeoMatchSetId, "Updates": _Updates }

-- | Constructs UpdateGeoMatchSetRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateGeoMatchSetRequest' :: ChangeToken -> ResourceId -> GeoMatchSetUpdates -> ( { "GeoMatchSetId" :: (ResourceId) , "ChangeToken" :: (ChangeToken) , "Updates" :: (GeoMatchSetUpdates) } -> {"GeoMatchSetId" :: (ResourceId) , "ChangeToken" :: (ChangeToken) , "Updates" :: (GeoMatchSetUpdates) } ) -> UpdateGeoMatchSetRequest
newUpdateGeoMatchSetRequest' _ChangeToken _GeoMatchSetId _Updates customize = (UpdateGeoMatchSetRequest <<< customize) { "ChangeToken": _ChangeToken, "GeoMatchSetId": _GeoMatchSetId, "Updates": _Updates }



newtype UpdateGeoMatchSetResponse = UpdateGeoMatchSetResponse 
  { "ChangeToken" :: Maybe (ChangeToken)
  }
derive instance newtypeUpdateGeoMatchSetResponse :: Newtype UpdateGeoMatchSetResponse _
derive instance repGenericUpdateGeoMatchSetResponse :: Generic UpdateGeoMatchSetResponse _
instance showUpdateGeoMatchSetResponse :: Show UpdateGeoMatchSetResponse where show = genericShow
instance decodeUpdateGeoMatchSetResponse :: Decode UpdateGeoMatchSetResponse where decode = genericDecode options
instance encodeUpdateGeoMatchSetResponse :: Encode UpdateGeoMatchSetResponse where encode = genericEncode options

-- | Constructs UpdateGeoMatchSetResponse from required parameters
newUpdateGeoMatchSetResponse :: UpdateGeoMatchSetResponse
newUpdateGeoMatchSetResponse  = UpdateGeoMatchSetResponse { "ChangeToken": Nothing }

-- | Constructs UpdateGeoMatchSetResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateGeoMatchSetResponse' :: ( { "ChangeToken" :: Maybe (ChangeToken) } -> {"ChangeToken" :: Maybe (ChangeToken) } ) -> UpdateGeoMatchSetResponse
newUpdateGeoMatchSetResponse'  customize = (UpdateGeoMatchSetResponse <<< customize) { "ChangeToken": Nothing }



newtype UpdateIPSetRequest = UpdateIPSetRequest 
  { "IPSetId" :: (ResourceId)
  , "ChangeToken" :: (ChangeToken)
  , "Updates" :: (IPSetUpdates)
  }
derive instance newtypeUpdateIPSetRequest :: Newtype UpdateIPSetRequest _
derive instance repGenericUpdateIPSetRequest :: Generic UpdateIPSetRequest _
instance showUpdateIPSetRequest :: Show UpdateIPSetRequest where show = genericShow
instance decodeUpdateIPSetRequest :: Decode UpdateIPSetRequest where decode = genericDecode options
instance encodeUpdateIPSetRequest :: Encode UpdateIPSetRequest where encode = genericEncode options

-- | Constructs UpdateIPSetRequest from required parameters
newUpdateIPSetRequest :: ChangeToken -> ResourceId -> IPSetUpdates -> UpdateIPSetRequest
newUpdateIPSetRequest _ChangeToken _IPSetId _Updates = UpdateIPSetRequest { "ChangeToken": _ChangeToken, "IPSetId": _IPSetId, "Updates": _Updates }

-- | Constructs UpdateIPSetRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateIPSetRequest' :: ChangeToken -> ResourceId -> IPSetUpdates -> ( { "IPSetId" :: (ResourceId) , "ChangeToken" :: (ChangeToken) , "Updates" :: (IPSetUpdates) } -> {"IPSetId" :: (ResourceId) , "ChangeToken" :: (ChangeToken) , "Updates" :: (IPSetUpdates) } ) -> UpdateIPSetRequest
newUpdateIPSetRequest' _ChangeToken _IPSetId _Updates customize = (UpdateIPSetRequest <<< customize) { "ChangeToken": _ChangeToken, "IPSetId": _IPSetId, "Updates": _Updates }



newtype UpdateIPSetResponse = UpdateIPSetResponse 
  { "ChangeToken" :: Maybe (ChangeToken)
  }
derive instance newtypeUpdateIPSetResponse :: Newtype UpdateIPSetResponse _
derive instance repGenericUpdateIPSetResponse :: Generic UpdateIPSetResponse _
instance showUpdateIPSetResponse :: Show UpdateIPSetResponse where show = genericShow
instance decodeUpdateIPSetResponse :: Decode UpdateIPSetResponse where decode = genericDecode options
instance encodeUpdateIPSetResponse :: Encode UpdateIPSetResponse where encode = genericEncode options

-- | Constructs UpdateIPSetResponse from required parameters
newUpdateIPSetResponse :: UpdateIPSetResponse
newUpdateIPSetResponse  = UpdateIPSetResponse { "ChangeToken": Nothing }

-- | Constructs UpdateIPSetResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateIPSetResponse' :: ( { "ChangeToken" :: Maybe (ChangeToken) } -> {"ChangeToken" :: Maybe (ChangeToken) } ) -> UpdateIPSetResponse
newUpdateIPSetResponse'  customize = (UpdateIPSetResponse <<< customize) { "ChangeToken": Nothing }



newtype UpdateRateBasedRuleRequest = UpdateRateBasedRuleRequest 
  { "RuleId" :: (ResourceId)
  , "ChangeToken" :: (ChangeToken)
  , "Updates" :: (RuleUpdates)
  , "RateLimit" :: (RateLimit)
  }
derive instance newtypeUpdateRateBasedRuleRequest :: Newtype UpdateRateBasedRuleRequest _
derive instance repGenericUpdateRateBasedRuleRequest :: Generic UpdateRateBasedRuleRequest _
instance showUpdateRateBasedRuleRequest :: Show UpdateRateBasedRuleRequest where show = genericShow
instance decodeUpdateRateBasedRuleRequest :: Decode UpdateRateBasedRuleRequest where decode = genericDecode options
instance encodeUpdateRateBasedRuleRequest :: Encode UpdateRateBasedRuleRequest where encode = genericEncode options

-- | Constructs UpdateRateBasedRuleRequest from required parameters
newUpdateRateBasedRuleRequest :: ChangeToken -> RateLimit -> ResourceId -> RuleUpdates -> UpdateRateBasedRuleRequest
newUpdateRateBasedRuleRequest _ChangeToken _RateLimit _RuleId _Updates = UpdateRateBasedRuleRequest { "ChangeToken": _ChangeToken, "RateLimit": _RateLimit, "RuleId": _RuleId, "Updates": _Updates }

-- | Constructs UpdateRateBasedRuleRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateRateBasedRuleRequest' :: ChangeToken -> RateLimit -> ResourceId -> RuleUpdates -> ( { "RuleId" :: (ResourceId) , "ChangeToken" :: (ChangeToken) , "Updates" :: (RuleUpdates) , "RateLimit" :: (RateLimit) } -> {"RuleId" :: (ResourceId) , "ChangeToken" :: (ChangeToken) , "Updates" :: (RuleUpdates) , "RateLimit" :: (RateLimit) } ) -> UpdateRateBasedRuleRequest
newUpdateRateBasedRuleRequest' _ChangeToken _RateLimit _RuleId _Updates customize = (UpdateRateBasedRuleRequest <<< customize) { "ChangeToken": _ChangeToken, "RateLimit": _RateLimit, "RuleId": _RuleId, "Updates": _Updates }



newtype UpdateRateBasedRuleResponse = UpdateRateBasedRuleResponse 
  { "ChangeToken" :: Maybe (ChangeToken)
  }
derive instance newtypeUpdateRateBasedRuleResponse :: Newtype UpdateRateBasedRuleResponse _
derive instance repGenericUpdateRateBasedRuleResponse :: Generic UpdateRateBasedRuleResponse _
instance showUpdateRateBasedRuleResponse :: Show UpdateRateBasedRuleResponse where show = genericShow
instance decodeUpdateRateBasedRuleResponse :: Decode UpdateRateBasedRuleResponse where decode = genericDecode options
instance encodeUpdateRateBasedRuleResponse :: Encode UpdateRateBasedRuleResponse where encode = genericEncode options

-- | Constructs UpdateRateBasedRuleResponse from required parameters
newUpdateRateBasedRuleResponse :: UpdateRateBasedRuleResponse
newUpdateRateBasedRuleResponse  = UpdateRateBasedRuleResponse { "ChangeToken": Nothing }

-- | Constructs UpdateRateBasedRuleResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateRateBasedRuleResponse' :: ( { "ChangeToken" :: Maybe (ChangeToken) } -> {"ChangeToken" :: Maybe (ChangeToken) } ) -> UpdateRateBasedRuleResponse
newUpdateRateBasedRuleResponse'  customize = (UpdateRateBasedRuleResponse <<< customize) { "ChangeToken": Nothing }



newtype UpdateRegexMatchSetRequest = UpdateRegexMatchSetRequest 
  { "RegexMatchSetId" :: (ResourceId)
  , "Updates" :: (RegexMatchSetUpdates)
  , "ChangeToken" :: (ChangeToken)
  }
derive instance newtypeUpdateRegexMatchSetRequest :: Newtype UpdateRegexMatchSetRequest _
derive instance repGenericUpdateRegexMatchSetRequest :: Generic UpdateRegexMatchSetRequest _
instance showUpdateRegexMatchSetRequest :: Show UpdateRegexMatchSetRequest where show = genericShow
instance decodeUpdateRegexMatchSetRequest :: Decode UpdateRegexMatchSetRequest where decode = genericDecode options
instance encodeUpdateRegexMatchSetRequest :: Encode UpdateRegexMatchSetRequest where encode = genericEncode options

-- | Constructs UpdateRegexMatchSetRequest from required parameters
newUpdateRegexMatchSetRequest :: ChangeToken -> ResourceId -> RegexMatchSetUpdates -> UpdateRegexMatchSetRequest
newUpdateRegexMatchSetRequest _ChangeToken _RegexMatchSetId _Updates = UpdateRegexMatchSetRequest { "ChangeToken": _ChangeToken, "RegexMatchSetId": _RegexMatchSetId, "Updates": _Updates }

-- | Constructs UpdateRegexMatchSetRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateRegexMatchSetRequest' :: ChangeToken -> ResourceId -> RegexMatchSetUpdates -> ( { "RegexMatchSetId" :: (ResourceId) , "Updates" :: (RegexMatchSetUpdates) , "ChangeToken" :: (ChangeToken) } -> {"RegexMatchSetId" :: (ResourceId) , "Updates" :: (RegexMatchSetUpdates) , "ChangeToken" :: (ChangeToken) } ) -> UpdateRegexMatchSetRequest
newUpdateRegexMatchSetRequest' _ChangeToken _RegexMatchSetId _Updates customize = (UpdateRegexMatchSetRequest <<< customize) { "ChangeToken": _ChangeToken, "RegexMatchSetId": _RegexMatchSetId, "Updates": _Updates }



newtype UpdateRegexMatchSetResponse = UpdateRegexMatchSetResponse 
  { "ChangeToken" :: Maybe (ChangeToken)
  }
derive instance newtypeUpdateRegexMatchSetResponse :: Newtype UpdateRegexMatchSetResponse _
derive instance repGenericUpdateRegexMatchSetResponse :: Generic UpdateRegexMatchSetResponse _
instance showUpdateRegexMatchSetResponse :: Show UpdateRegexMatchSetResponse where show = genericShow
instance decodeUpdateRegexMatchSetResponse :: Decode UpdateRegexMatchSetResponse where decode = genericDecode options
instance encodeUpdateRegexMatchSetResponse :: Encode UpdateRegexMatchSetResponse where encode = genericEncode options

-- | Constructs UpdateRegexMatchSetResponse from required parameters
newUpdateRegexMatchSetResponse :: UpdateRegexMatchSetResponse
newUpdateRegexMatchSetResponse  = UpdateRegexMatchSetResponse { "ChangeToken": Nothing }

-- | Constructs UpdateRegexMatchSetResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateRegexMatchSetResponse' :: ( { "ChangeToken" :: Maybe (ChangeToken) } -> {"ChangeToken" :: Maybe (ChangeToken) } ) -> UpdateRegexMatchSetResponse
newUpdateRegexMatchSetResponse'  customize = (UpdateRegexMatchSetResponse <<< customize) { "ChangeToken": Nothing }



newtype UpdateRegexPatternSetRequest = UpdateRegexPatternSetRequest 
  { "RegexPatternSetId" :: (ResourceId)
  , "Updates" :: (RegexPatternSetUpdates)
  , "ChangeToken" :: (ChangeToken)
  }
derive instance newtypeUpdateRegexPatternSetRequest :: Newtype UpdateRegexPatternSetRequest _
derive instance repGenericUpdateRegexPatternSetRequest :: Generic UpdateRegexPatternSetRequest _
instance showUpdateRegexPatternSetRequest :: Show UpdateRegexPatternSetRequest where show = genericShow
instance decodeUpdateRegexPatternSetRequest :: Decode UpdateRegexPatternSetRequest where decode = genericDecode options
instance encodeUpdateRegexPatternSetRequest :: Encode UpdateRegexPatternSetRequest where encode = genericEncode options

-- | Constructs UpdateRegexPatternSetRequest from required parameters
newUpdateRegexPatternSetRequest :: ChangeToken -> ResourceId -> RegexPatternSetUpdates -> UpdateRegexPatternSetRequest
newUpdateRegexPatternSetRequest _ChangeToken _RegexPatternSetId _Updates = UpdateRegexPatternSetRequest { "ChangeToken": _ChangeToken, "RegexPatternSetId": _RegexPatternSetId, "Updates": _Updates }

-- | Constructs UpdateRegexPatternSetRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateRegexPatternSetRequest' :: ChangeToken -> ResourceId -> RegexPatternSetUpdates -> ( { "RegexPatternSetId" :: (ResourceId) , "Updates" :: (RegexPatternSetUpdates) , "ChangeToken" :: (ChangeToken) } -> {"RegexPatternSetId" :: (ResourceId) , "Updates" :: (RegexPatternSetUpdates) , "ChangeToken" :: (ChangeToken) } ) -> UpdateRegexPatternSetRequest
newUpdateRegexPatternSetRequest' _ChangeToken _RegexPatternSetId _Updates customize = (UpdateRegexPatternSetRequest <<< customize) { "ChangeToken": _ChangeToken, "RegexPatternSetId": _RegexPatternSetId, "Updates": _Updates }



newtype UpdateRegexPatternSetResponse = UpdateRegexPatternSetResponse 
  { "ChangeToken" :: Maybe (ChangeToken)
  }
derive instance newtypeUpdateRegexPatternSetResponse :: Newtype UpdateRegexPatternSetResponse _
derive instance repGenericUpdateRegexPatternSetResponse :: Generic UpdateRegexPatternSetResponse _
instance showUpdateRegexPatternSetResponse :: Show UpdateRegexPatternSetResponse where show = genericShow
instance decodeUpdateRegexPatternSetResponse :: Decode UpdateRegexPatternSetResponse where decode = genericDecode options
instance encodeUpdateRegexPatternSetResponse :: Encode UpdateRegexPatternSetResponse where encode = genericEncode options

-- | Constructs UpdateRegexPatternSetResponse from required parameters
newUpdateRegexPatternSetResponse :: UpdateRegexPatternSetResponse
newUpdateRegexPatternSetResponse  = UpdateRegexPatternSetResponse { "ChangeToken": Nothing }

-- | Constructs UpdateRegexPatternSetResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateRegexPatternSetResponse' :: ( { "ChangeToken" :: Maybe (ChangeToken) } -> {"ChangeToken" :: Maybe (ChangeToken) } ) -> UpdateRegexPatternSetResponse
newUpdateRegexPatternSetResponse'  customize = (UpdateRegexPatternSetResponse <<< customize) { "ChangeToken": Nothing }



newtype UpdateRuleGroupRequest = UpdateRuleGroupRequest 
  { "RuleGroupId" :: (ResourceId)
  , "Updates" :: (RuleGroupUpdates)
  , "ChangeToken" :: (ChangeToken)
  }
derive instance newtypeUpdateRuleGroupRequest :: Newtype UpdateRuleGroupRequest _
derive instance repGenericUpdateRuleGroupRequest :: Generic UpdateRuleGroupRequest _
instance showUpdateRuleGroupRequest :: Show UpdateRuleGroupRequest where show = genericShow
instance decodeUpdateRuleGroupRequest :: Decode UpdateRuleGroupRequest where decode = genericDecode options
instance encodeUpdateRuleGroupRequest :: Encode UpdateRuleGroupRequest where encode = genericEncode options

-- | Constructs UpdateRuleGroupRequest from required parameters
newUpdateRuleGroupRequest :: ChangeToken -> ResourceId -> RuleGroupUpdates -> UpdateRuleGroupRequest
newUpdateRuleGroupRequest _ChangeToken _RuleGroupId _Updates = UpdateRuleGroupRequest { "ChangeToken": _ChangeToken, "RuleGroupId": _RuleGroupId, "Updates": _Updates }

-- | Constructs UpdateRuleGroupRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateRuleGroupRequest' :: ChangeToken -> ResourceId -> RuleGroupUpdates -> ( { "RuleGroupId" :: (ResourceId) , "Updates" :: (RuleGroupUpdates) , "ChangeToken" :: (ChangeToken) } -> {"RuleGroupId" :: (ResourceId) , "Updates" :: (RuleGroupUpdates) , "ChangeToken" :: (ChangeToken) } ) -> UpdateRuleGroupRequest
newUpdateRuleGroupRequest' _ChangeToken _RuleGroupId _Updates customize = (UpdateRuleGroupRequest <<< customize) { "ChangeToken": _ChangeToken, "RuleGroupId": _RuleGroupId, "Updates": _Updates }



newtype UpdateRuleGroupResponse = UpdateRuleGroupResponse 
  { "ChangeToken" :: Maybe (ChangeToken)
  }
derive instance newtypeUpdateRuleGroupResponse :: Newtype UpdateRuleGroupResponse _
derive instance repGenericUpdateRuleGroupResponse :: Generic UpdateRuleGroupResponse _
instance showUpdateRuleGroupResponse :: Show UpdateRuleGroupResponse where show = genericShow
instance decodeUpdateRuleGroupResponse :: Decode UpdateRuleGroupResponse where decode = genericDecode options
instance encodeUpdateRuleGroupResponse :: Encode UpdateRuleGroupResponse where encode = genericEncode options

-- | Constructs UpdateRuleGroupResponse from required parameters
newUpdateRuleGroupResponse :: UpdateRuleGroupResponse
newUpdateRuleGroupResponse  = UpdateRuleGroupResponse { "ChangeToken": Nothing }

-- | Constructs UpdateRuleGroupResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateRuleGroupResponse' :: ( { "ChangeToken" :: Maybe (ChangeToken) } -> {"ChangeToken" :: Maybe (ChangeToken) } ) -> UpdateRuleGroupResponse
newUpdateRuleGroupResponse'  customize = (UpdateRuleGroupResponse <<< customize) { "ChangeToken": Nothing }



newtype UpdateRuleRequest = UpdateRuleRequest 
  { "RuleId" :: (ResourceId)
  , "ChangeToken" :: (ChangeToken)
  , "Updates" :: (RuleUpdates)
  }
derive instance newtypeUpdateRuleRequest :: Newtype UpdateRuleRequest _
derive instance repGenericUpdateRuleRequest :: Generic UpdateRuleRequest _
instance showUpdateRuleRequest :: Show UpdateRuleRequest where show = genericShow
instance decodeUpdateRuleRequest :: Decode UpdateRuleRequest where decode = genericDecode options
instance encodeUpdateRuleRequest :: Encode UpdateRuleRequest where encode = genericEncode options

-- | Constructs UpdateRuleRequest from required parameters
newUpdateRuleRequest :: ChangeToken -> ResourceId -> RuleUpdates -> UpdateRuleRequest
newUpdateRuleRequest _ChangeToken _RuleId _Updates = UpdateRuleRequest { "ChangeToken": _ChangeToken, "RuleId": _RuleId, "Updates": _Updates }

-- | Constructs UpdateRuleRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateRuleRequest' :: ChangeToken -> ResourceId -> RuleUpdates -> ( { "RuleId" :: (ResourceId) , "ChangeToken" :: (ChangeToken) , "Updates" :: (RuleUpdates) } -> {"RuleId" :: (ResourceId) , "ChangeToken" :: (ChangeToken) , "Updates" :: (RuleUpdates) } ) -> UpdateRuleRequest
newUpdateRuleRequest' _ChangeToken _RuleId _Updates customize = (UpdateRuleRequest <<< customize) { "ChangeToken": _ChangeToken, "RuleId": _RuleId, "Updates": _Updates }



newtype UpdateRuleResponse = UpdateRuleResponse 
  { "ChangeToken" :: Maybe (ChangeToken)
  }
derive instance newtypeUpdateRuleResponse :: Newtype UpdateRuleResponse _
derive instance repGenericUpdateRuleResponse :: Generic UpdateRuleResponse _
instance showUpdateRuleResponse :: Show UpdateRuleResponse where show = genericShow
instance decodeUpdateRuleResponse :: Decode UpdateRuleResponse where decode = genericDecode options
instance encodeUpdateRuleResponse :: Encode UpdateRuleResponse where encode = genericEncode options

-- | Constructs UpdateRuleResponse from required parameters
newUpdateRuleResponse :: UpdateRuleResponse
newUpdateRuleResponse  = UpdateRuleResponse { "ChangeToken": Nothing }

-- | Constructs UpdateRuleResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateRuleResponse' :: ( { "ChangeToken" :: Maybe (ChangeToken) } -> {"ChangeToken" :: Maybe (ChangeToken) } ) -> UpdateRuleResponse
newUpdateRuleResponse'  customize = (UpdateRuleResponse <<< customize) { "ChangeToken": Nothing }



newtype UpdateSizeConstraintSetRequest = UpdateSizeConstraintSetRequest 
  { "SizeConstraintSetId" :: (ResourceId)
  , "ChangeToken" :: (ChangeToken)
  , "Updates" :: (SizeConstraintSetUpdates)
  }
derive instance newtypeUpdateSizeConstraintSetRequest :: Newtype UpdateSizeConstraintSetRequest _
derive instance repGenericUpdateSizeConstraintSetRequest :: Generic UpdateSizeConstraintSetRequest _
instance showUpdateSizeConstraintSetRequest :: Show UpdateSizeConstraintSetRequest where show = genericShow
instance decodeUpdateSizeConstraintSetRequest :: Decode UpdateSizeConstraintSetRequest where decode = genericDecode options
instance encodeUpdateSizeConstraintSetRequest :: Encode UpdateSizeConstraintSetRequest where encode = genericEncode options

-- | Constructs UpdateSizeConstraintSetRequest from required parameters
newUpdateSizeConstraintSetRequest :: ChangeToken -> ResourceId -> SizeConstraintSetUpdates -> UpdateSizeConstraintSetRequest
newUpdateSizeConstraintSetRequest _ChangeToken _SizeConstraintSetId _Updates = UpdateSizeConstraintSetRequest { "ChangeToken": _ChangeToken, "SizeConstraintSetId": _SizeConstraintSetId, "Updates": _Updates }

-- | Constructs UpdateSizeConstraintSetRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateSizeConstraintSetRequest' :: ChangeToken -> ResourceId -> SizeConstraintSetUpdates -> ( { "SizeConstraintSetId" :: (ResourceId) , "ChangeToken" :: (ChangeToken) , "Updates" :: (SizeConstraintSetUpdates) } -> {"SizeConstraintSetId" :: (ResourceId) , "ChangeToken" :: (ChangeToken) , "Updates" :: (SizeConstraintSetUpdates) } ) -> UpdateSizeConstraintSetRequest
newUpdateSizeConstraintSetRequest' _ChangeToken _SizeConstraintSetId _Updates customize = (UpdateSizeConstraintSetRequest <<< customize) { "ChangeToken": _ChangeToken, "SizeConstraintSetId": _SizeConstraintSetId, "Updates": _Updates }



newtype UpdateSizeConstraintSetResponse = UpdateSizeConstraintSetResponse 
  { "ChangeToken" :: Maybe (ChangeToken)
  }
derive instance newtypeUpdateSizeConstraintSetResponse :: Newtype UpdateSizeConstraintSetResponse _
derive instance repGenericUpdateSizeConstraintSetResponse :: Generic UpdateSizeConstraintSetResponse _
instance showUpdateSizeConstraintSetResponse :: Show UpdateSizeConstraintSetResponse where show = genericShow
instance decodeUpdateSizeConstraintSetResponse :: Decode UpdateSizeConstraintSetResponse where decode = genericDecode options
instance encodeUpdateSizeConstraintSetResponse :: Encode UpdateSizeConstraintSetResponse where encode = genericEncode options

-- | Constructs UpdateSizeConstraintSetResponse from required parameters
newUpdateSizeConstraintSetResponse :: UpdateSizeConstraintSetResponse
newUpdateSizeConstraintSetResponse  = UpdateSizeConstraintSetResponse { "ChangeToken": Nothing }

-- | Constructs UpdateSizeConstraintSetResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateSizeConstraintSetResponse' :: ( { "ChangeToken" :: Maybe (ChangeToken) } -> {"ChangeToken" :: Maybe (ChangeToken) } ) -> UpdateSizeConstraintSetResponse
newUpdateSizeConstraintSetResponse'  customize = (UpdateSizeConstraintSetResponse <<< customize) { "ChangeToken": Nothing }



-- | <p>A request to update a <a>SqlInjectionMatchSet</a>.</p>
newtype UpdateSqlInjectionMatchSetRequest = UpdateSqlInjectionMatchSetRequest 
  { "SqlInjectionMatchSetId" :: (ResourceId)
  , "ChangeToken" :: (ChangeToken)
  , "Updates" :: (SqlInjectionMatchSetUpdates)
  }
derive instance newtypeUpdateSqlInjectionMatchSetRequest :: Newtype UpdateSqlInjectionMatchSetRequest _
derive instance repGenericUpdateSqlInjectionMatchSetRequest :: Generic UpdateSqlInjectionMatchSetRequest _
instance showUpdateSqlInjectionMatchSetRequest :: Show UpdateSqlInjectionMatchSetRequest where show = genericShow
instance decodeUpdateSqlInjectionMatchSetRequest :: Decode UpdateSqlInjectionMatchSetRequest where decode = genericDecode options
instance encodeUpdateSqlInjectionMatchSetRequest :: Encode UpdateSqlInjectionMatchSetRequest where encode = genericEncode options

-- | Constructs UpdateSqlInjectionMatchSetRequest from required parameters
newUpdateSqlInjectionMatchSetRequest :: ChangeToken -> ResourceId -> SqlInjectionMatchSetUpdates -> UpdateSqlInjectionMatchSetRequest
newUpdateSqlInjectionMatchSetRequest _ChangeToken _SqlInjectionMatchSetId _Updates = UpdateSqlInjectionMatchSetRequest { "ChangeToken": _ChangeToken, "SqlInjectionMatchSetId": _SqlInjectionMatchSetId, "Updates": _Updates }

-- | Constructs UpdateSqlInjectionMatchSetRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateSqlInjectionMatchSetRequest' :: ChangeToken -> ResourceId -> SqlInjectionMatchSetUpdates -> ( { "SqlInjectionMatchSetId" :: (ResourceId) , "ChangeToken" :: (ChangeToken) , "Updates" :: (SqlInjectionMatchSetUpdates) } -> {"SqlInjectionMatchSetId" :: (ResourceId) , "ChangeToken" :: (ChangeToken) , "Updates" :: (SqlInjectionMatchSetUpdates) } ) -> UpdateSqlInjectionMatchSetRequest
newUpdateSqlInjectionMatchSetRequest' _ChangeToken _SqlInjectionMatchSetId _Updates customize = (UpdateSqlInjectionMatchSetRequest <<< customize) { "ChangeToken": _ChangeToken, "SqlInjectionMatchSetId": _SqlInjectionMatchSetId, "Updates": _Updates }



-- | <p>The response to an <a>UpdateSqlInjectionMatchSets</a> request.</p>
newtype UpdateSqlInjectionMatchSetResponse = UpdateSqlInjectionMatchSetResponse 
  { "ChangeToken" :: Maybe (ChangeToken)
  }
derive instance newtypeUpdateSqlInjectionMatchSetResponse :: Newtype UpdateSqlInjectionMatchSetResponse _
derive instance repGenericUpdateSqlInjectionMatchSetResponse :: Generic UpdateSqlInjectionMatchSetResponse _
instance showUpdateSqlInjectionMatchSetResponse :: Show UpdateSqlInjectionMatchSetResponse where show = genericShow
instance decodeUpdateSqlInjectionMatchSetResponse :: Decode UpdateSqlInjectionMatchSetResponse where decode = genericDecode options
instance encodeUpdateSqlInjectionMatchSetResponse :: Encode UpdateSqlInjectionMatchSetResponse where encode = genericEncode options

-- | Constructs UpdateSqlInjectionMatchSetResponse from required parameters
newUpdateSqlInjectionMatchSetResponse :: UpdateSqlInjectionMatchSetResponse
newUpdateSqlInjectionMatchSetResponse  = UpdateSqlInjectionMatchSetResponse { "ChangeToken": Nothing }

-- | Constructs UpdateSqlInjectionMatchSetResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateSqlInjectionMatchSetResponse' :: ( { "ChangeToken" :: Maybe (ChangeToken) } -> {"ChangeToken" :: Maybe (ChangeToken) } ) -> UpdateSqlInjectionMatchSetResponse
newUpdateSqlInjectionMatchSetResponse'  customize = (UpdateSqlInjectionMatchSetResponse <<< customize) { "ChangeToken": Nothing }



newtype UpdateWebACLRequest = UpdateWebACLRequest 
  { "WebACLId" :: (ResourceId)
  , "ChangeToken" :: (ChangeToken)
  , "Updates" :: Maybe (WebACLUpdates)
  , "DefaultAction" :: Maybe (WafAction)
  }
derive instance newtypeUpdateWebACLRequest :: Newtype UpdateWebACLRequest _
derive instance repGenericUpdateWebACLRequest :: Generic UpdateWebACLRequest _
instance showUpdateWebACLRequest :: Show UpdateWebACLRequest where show = genericShow
instance decodeUpdateWebACLRequest :: Decode UpdateWebACLRequest where decode = genericDecode options
instance encodeUpdateWebACLRequest :: Encode UpdateWebACLRequest where encode = genericEncode options

-- | Constructs UpdateWebACLRequest from required parameters
newUpdateWebACLRequest :: ChangeToken -> ResourceId -> UpdateWebACLRequest
newUpdateWebACLRequest _ChangeToken _WebACLId = UpdateWebACLRequest { "ChangeToken": _ChangeToken, "WebACLId": _WebACLId, "DefaultAction": Nothing, "Updates": Nothing }

-- | Constructs UpdateWebACLRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateWebACLRequest' :: ChangeToken -> ResourceId -> ( { "WebACLId" :: (ResourceId) , "ChangeToken" :: (ChangeToken) , "Updates" :: Maybe (WebACLUpdates) , "DefaultAction" :: Maybe (WafAction) } -> {"WebACLId" :: (ResourceId) , "ChangeToken" :: (ChangeToken) , "Updates" :: Maybe (WebACLUpdates) , "DefaultAction" :: Maybe (WafAction) } ) -> UpdateWebACLRequest
newUpdateWebACLRequest' _ChangeToken _WebACLId customize = (UpdateWebACLRequest <<< customize) { "ChangeToken": _ChangeToken, "WebACLId": _WebACLId, "DefaultAction": Nothing, "Updates": Nothing }



newtype UpdateWebACLResponse = UpdateWebACLResponse 
  { "ChangeToken" :: Maybe (ChangeToken)
  }
derive instance newtypeUpdateWebACLResponse :: Newtype UpdateWebACLResponse _
derive instance repGenericUpdateWebACLResponse :: Generic UpdateWebACLResponse _
instance showUpdateWebACLResponse :: Show UpdateWebACLResponse where show = genericShow
instance decodeUpdateWebACLResponse :: Decode UpdateWebACLResponse where decode = genericDecode options
instance encodeUpdateWebACLResponse :: Encode UpdateWebACLResponse where encode = genericEncode options

-- | Constructs UpdateWebACLResponse from required parameters
newUpdateWebACLResponse :: UpdateWebACLResponse
newUpdateWebACLResponse  = UpdateWebACLResponse { "ChangeToken": Nothing }

-- | Constructs UpdateWebACLResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateWebACLResponse' :: ( { "ChangeToken" :: Maybe (ChangeToken) } -> {"ChangeToken" :: Maybe (ChangeToken) } ) -> UpdateWebACLResponse
newUpdateWebACLResponse'  customize = (UpdateWebACLResponse <<< customize) { "ChangeToken": Nothing }



-- | <p>A request to update an <a>XssMatchSet</a>.</p>
newtype UpdateXssMatchSetRequest = UpdateXssMatchSetRequest 
  { "XssMatchSetId" :: (ResourceId)
  , "ChangeToken" :: (ChangeToken)
  , "Updates" :: (XssMatchSetUpdates)
  }
derive instance newtypeUpdateXssMatchSetRequest :: Newtype UpdateXssMatchSetRequest _
derive instance repGenericUpdateXssMatchSetRequest :: Generic UpdateXssMatchSetRequest _
instance showUpdateXssMatchSetRequest :: Show UpdateXssMatchSetRequest where show = genericShow
instance decodeUpdateXssMatchSetRequest :: Decode UpdateXssMatchSetRequest where decode = genericDecode options
instance encodeUpdateXssMatchSetRequest :: Encode UpdateXssMatchSetRequest where encode = genericEncode options

-- | Constructs UpdateXssMatchSetRequest from required parameters
newUpdateXssMatchSetRequest :: ChangeToken -> XssMatchSetUpdates -> ResourceId -> UpdateXssMatchSetRequest
newUpdateXssMatchSetRequest _ChangeToken _Updates _XssMatchSetId = UpdateXssMatchSetRequest { "ChangeToken": _ChangeToken, "Updates": _Updates, "XssMatchSetId": _XssMatchSetId }

-- | Constructs UpdateXssMatchSetRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateXssMatchSetRequest' :: ChangeToken -> XssMatchSetUpdates -> ResourceId -> ( { "XssMatchSetId" :: (ResourceId) , "ChangeToken" :: (ChangeToken) , "Updates" :: (XssMatchSetUpdates) } -> {"XssMatchSetId" :: (ResourceId) , "ChangeToken" :: (ChangeToken) , "Updates" :: (XssMatchSetUpdates) } ) -> UpdateXssMatchSetRequest
newUpdateXssMatchSetRequest' _ChangeToken _Updates _XssMatchSetId customize = (UpdateXssMatchSetRequest <<< customize) { "ChangeToken": _ChangeToken, "Updates": _Updates, "XssMatchSetId": _XssMatchSetId }



-- | <p>The response to an <a>UpdateXssMatchSets</a> request.</p>
newtype UpdateXssMatchSetResponse = UpdateXssMatchSetResponse 
  { "ChangeToken" :: Maybe (ChangeToken)
  }
derive instance newtypeUpdateXssMatchSetResponse :: Newtype UpdateXssMatchSetResponse _
derive instance repGenericUpdateXssMatchSetResponse :: Generic UpdateXssMatchSetResponse _
instance showUpdateXssMatchSetResponse :: Show UpdateXssMatchSetResponse where show = genericShow
instance decodeUpdateXssMatchSetResponse :: Decode UpdateXssMatchSetResponse where decode = genericDecode options
instance encodeUpdateXssMatchSetResponse :: Encode UpdateXssMatchSetResponse where encode = genericEncode options

-- | Constructs UpdateXssMatchSetResponse from required parameters
newUpdateXssMatchSetResponse :: UpdateXssMatchSetResponse
newUpdateXssMatchSetResponse  = UpdateXssMatchSetResponse { "ChangeToken": Nothing }

-- | Constructs UpdateXssMatchSetResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateXssMatchSetResponse' :: ( { "ChangeToken" :: Maybe (ChangeToken) } -> {"ChangeToken" :: Maybe (ChangeToken) } ) -> UpdateXssMatchSetResponse
newUpdateXssMatchSetResponse'  customize = (UpdateXssMatchSetResponse <<< customize) { "ChangeToken": Nothing }



-- | <p>The name specified is invalid.</p>
newtype WAFDisallowedNameException = WAFDisallowedNameException 
  { "message" :: Maybe (ErrorMessage')
  }
derive instance newtypeWAFDisallowedNameException :: Newtype WAFDisallowedNameException _
derive instance repGenericWAFDisallowedNameException :: Generic WAFDisallowedNameException _
instance showWAFDisallowedNameException :: Show WAFDisallowedNameException where show = genericShow
instance decodeWAFDisallowedNameException :: Decode WAFDisallowedNameException where decode = genericDecode options
instance encodeWAFDisallowedNameException :: Encode WAFDisallowedNameException where encode = genericEncode options

-- | Constructs WAFDisallowedNameException from required parameters
newWAFDisallowedNameException :: WAFDisallowedNameException
newWAFDisallowedNameException  = WAFDisallowedNameException { "message": Nothing }

-- | Constructs WAFDisallowedNameException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newWAFDisallowedNameException' :: ( { "message" :: Maybe (ErrorMessage') } -> {"message" :: Maybe (ErrorMessage') } ) -> WAFDisallowedNameException
newWAFDisallowedNameException'  customize = (WAFDisallowedNameException <<< customize) { "message": Nothing }



-- | <p>The operation failed because of a system problem, even though the request was valid. Retry your request.</p>
newtype WAFInternalErrorException = WAFInternalErrorException 
  { "message" :: Maybe (ErrorMessage')
  }
derive instance newtypeWAFInternalErrorException :: Newtype WAFInternalErrorException _
derive instance repGenericWAFInternalErrorException :: Generic WAFInternalErrorException _
instance showWAFInternalErrorException :: Show WAFInternalErrorException where show = genericShow
instance decodeWAFInternalErrorException :: Decode WAFInternalErrorException where decode = genericDecode options
instance encodeWAFInternalErrorException :: Encode WAFInternalErrorException where encode = genericEncode options

-- | Constructs WAFInternalErrorException from required parameters
newWAFInternalErrorException :: WAFInternalErrorException
newWAFInternalErrorException  = WAFInternalErrorException { "message": Nothing }

-- | Constructs WAFInternalErrorException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newWAFInternalErrorException' :: ( { "message" :: Maybe (ErrorMessage') } -> {"message" :: Maybe (ErrorMessage') } ) -> WAFInternalErrorException
newWAFInternalErrorException'  customize = (WAFInternalErrorException <<< customize) { "message": Nothing }



-- | <p>The operation failed because you tried to create, update, or delete an object by using an invalid account identifier.</p>
newtype WAFInvalidAccountException = WAFInvalidAccountException Types.NoArguments
derive instance newtypeWAFInvalidAccountException :: Newtype WAFInvalidAccountException _
derive instance repGenericWAFInvalidAccountException :: Generic WAFInvalidAccountException _
instance showWAFInvalidAccountException :: Show WAFInvalidAccountException where show = genericShow
instance decodeWAFInvalidAccountException :: Decode WAFInvalidAccountException where decode = genericDecode options
instance encodeWAFInvalidAccountException :: Encode WAFInvalidAccountException where encode = genericEncode options



-- | <p>The operation failed because there was nothing to do. For example:</p> <ul> <li> <p>You tried to remove a <code>Rule</code> from a <code>WebACL</code>, but the <code>Rule</code> isn't in the specified <code>WebACL</code>.</p> </li> <li> <p>You tried to remove an IP address from an <code>IPSet</code>, but the IP address isn't in the specified <code>IPSet</code>.</p> </li> <li> <p>You tried to remove a <code>ByteMatchTuple</code> from a <code>ByteMatchSet</code>, but the <code>ByteMatchTuple</code> isn't in the specified <code>WebACL</code>.</p> </li> <li> <p>You tried to add a <code>Rule</code> to a <code>WebACL</code>, but the <code>Rule</code> already exists in the specified <code>WebACL</code>.</p> </li> <li> <p>You tried to add an IP address to an <code>IPSet</code>, but the IP address already exists in the specified <code>IPSet</code>.</p> </li> <li> <p>You tried to add a <code>ByteMatchTuple</code> to a <code>ByteMatchSet</code>, but the <code>ByteMatchTuple</code> already exists in the specified <code>WebACL</code>.</p> </li> </ul>
newtype WAFInvalidOperationException = WAFInvalidOperationException 
  { "message" :: Maybe (ErrorMessage')
  }
derive instance newtypeWAFInvalidOperationException :: Newtype WAFInvalidOperationException _
derive instance repGenericWAFInvalidOperationException :: Generic WAFInvalidOperationException _
instance showWAFInvalidOperationException :: Show WAFInvalidOperationException where show = genericShow
instance decodeWAFInvalidOperationException :: Decode WAFInvalidOperationException where decode = genericDecode options
instance encodeWAFInvalidOperationException :: Encode WAFInvalidOperationException where encode = genericEncode options

-- | Constructs WAFInvalidOperationException from required parameters
newWAFInvalidOperationException :: WAFInvalidOperationException
newWAFInvalidOperationException  = WAFInvalidOperationException { "message": Nothing }

-- | Constructs WAFInvalidOperationException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newWAFInvalidOperationException' :: ( { "message" :: Maybe (ErrorMessage') } -> {"message" :: Maybe (ErrorMessage') } ) -> WAFInvalidOperationException
newWAFInvalidOperationException'  customize = (WAFInvalidOperationException <<< customize) { "message": Nothing }



-- | <p>The operation failed because AWS WAF didn't recognize a parameter in the request. For example:</p> <ul> <li> <p>You specified an invalid parameter name.</p> </li> <li> <p>You specified an invalid value.</p> </li> <li> <p>You tried to update an object (<code>ByteMatchSet</code>, <code>IPSet</code>, <code>Rule</code>, or <code>WebACL</code>) using an action other than <code>INSERT</code> or <code>DELETE</code>.</p> </li> <li> <p>You tried to create a <code>WebACL</code> with a <code>DefaultAction</code> <code>Type</code> other than <code>ALLOW</code>, <code>BLOCK</code>, or <code>COUNT</code>.</p> </li> <li> <p>You tried to create a <code>RateBasedRule</code> with a <code>RateKey</code> value other than <code>IP</code>.</p> </li> <li> <p>You tried to update a <code>WebACL</code> with a <code>WafAction</code> <code>Type</code> other than <code>ALLOW</code>, <code>BLOCK</code>, or <code>COUNT</code>.</p> </li> <li> <p>You tried to update a <code>ByteMatchSet</code> with a <code>FieldToMatch</code> <code>Type</code> other than HEADER, METHOD, QUERY_STRING, URI, or BODY.</p> </li> <li> <p>You tried to update a <code>ByteMatchSet</code> with a <code>Field</code> of <code>HEADER</code> but no value for <code>Data</code>.</p> </li> <li> <p>Your request references an ARN that is malformed, or corresponds to a resource with which a web ACL cannot be associated.</p> </li> </ul>
newtype WAFInvalidParameterException = WAFInvalidParameterException 
  { "field" :: Maybe (ParameterExceptionField)
  , "parameter" :: Maybe (ParameterExceptionParameter)
  , "reason" :: Maybe (ParameterExceptionReason)
  }
derive instance newtypeWAFInvalidParameterException :: Newtype WAFInvalidParameterException _
derive instance repGenericWAFInvalidParameterException :: Generic WAFInvalidParameterException _
instance showWAFInvalidParameterException :: Show WAFInvalidParameterException where show = genericShow
instance decodeWAFInvalidParameterException :: Decode WAFInvalidParameterException where decode = genericDecode options
instance encodeWAFInvalidParameterException :: Encode WAFInvalidParameterException where encode = genericEncode options

-- | Constructs WAFInvalidParameterException from required parameters
newWAFInvalidParameterException :: WAFInvalidParameterException
newWAFInvalidParameterException  = WAFInvalidParameterException { "field": Nothing, "parameter": Nothing, "reason": Nothing }

-- | Constructs WAFInvalidParameterException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newWAFInvalidParameterException' :: ( { "field" :: Maybe (ParameterExceptionField) , "parameter" :: Maybe (ParameterExceptionParameter) , "reason" :: Maybe (ParameterExceptionReason) } -> {"field" :: Maybe (ParameterExceptionField) , "parameter" :: Maybe (ParameterExceptionParameter) , "reason" :: Maybe (ParameterExceptionReason) } ) -> WAFInvalidParameterException
newWAFInvalidParameterException'  customize = (WAFInvalidParameterException <<< customize) { "field": Nothing, "parameter": Nothing, "reason": Nothing }



-- | <p>The operation failed because the specified policy is not in the proper format. </p> <p>The policy is subject to the following restrictions:</p> <ul> <li> <p>You can attach only one policy with each <code>PutPermissionPolicy</code> request.</p> </li> <li> <p>The policy must include an <code>Effect</code>, <code>Action</code> and <code>Principal</code>. </p> </li> <li> <p> <code>Effect</code> must specify <code>Allow</code>.</p> </li> <li> <p>The <code>Action</code> in the policy must be <code>waf:UpdateWebACL</code> or <code>waf-regional:UpdateWebACL</code>. Any extra or wildcard actions in the policy will be rejected.</p> </li> <li> <p>The policy cannot include a <code>Resource</code> parameter.</p> </li> <li> <p>The ARN in the request must be a valid WAF RuleGroup ARN and the RuleGroup must exist in the same region.</p> </li> <li> <p>The user making the request must be the owner of the RuleGroup.</p> </li> <li> <p>Your policy must be composed using IAM Policy version 2012-10-17.</p> </li> </ul>
newtype WAFInvalidPermissionPolicyException = WAFInvalidPermissionPolicyException 
  { "message" :: Maybe (ErrorMessage')
  }
derive instance newtypeWAFInvalidPermissionPolicyException :: Newtype WAFInvalidPermissionPolicyException _
derive instance repGenericWAFInvalidPermissionPolicyException :: Generic WAFInvalidPermissionPolicyException _
instance showWAFInvalidPermissionPolicyException :: Show WAFInvalidPermissionPolicyException where show = genericShow
instance decodeWAFInvalidPermissionPolicyException :: Decode WAFInvalidPermissionPolicyException where decode = genericDecode options
instance encodeWAFInvalidPermissionPolicyException :: Encode WAFInvalidPermissionPolicyException where encode = genericEncode options

-- | Constructs WAFInvalidPermissionPolicyException from required parameters
newWAFInvalidPermissionPolicyException :: WAFInvalidPermissionPolicyException
newWAFInvalidPermissionPolicyException  = WAFInvalidPermissionPolicyException { "message": Nothing }

-- | Constructs WAFInvalidPermissionPolicyException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newWAFInvalidPermissionPolicyException' :: ( { "message" :: Maybe (ErrorMessage') } -> {"message" :: Maybe (ErrorMessage') } ) -> WAFInvalidPermissionPolicyException
newWAFInvalidPermissionPolicyException'  customize = (WAFInvalidPermissionPolicyException <<< customize) { "message": Nothing }



-- | <p>The regular expression (regex) you specified in <code>RegexPatternString</code> is invalid.</p>
newtype WAFInvalidRegexPatternException = WAFInvalidRegexPatternException 
  { "message" :: Maybe (ErrorMessage')
  }
derive instance newtypeWAFInvalidRegexPatternException :: Newtype WAFInvalidRegexPatternException _
derive instance repGenericWAFInvalidRegexPatternException :: Generic WAFInvalidRegexPatternException _
instance showWAFInvalidRegexPatternException :: Show WAFInvalidRegexPatternException where show = genericShow
instance decodeWAFInvalidRegexPatternException :: Decode WAFInvalidRegexPatternException where decode = genericDecode options
instance encodeWAFInvalidRegexPatternException :: Encode WAFInvalidRegexPatternException where encode = genericEncode options

-- | Constructs WAFInvalidRegexPatternException from required parameters
newWAFInvalidRegexPatternException :: WAFInvalidRegexPatternException
newWAFInvalidRegexPatternException  = WAFInvalidRegexPatternException { "message": Nothing }

-- | Constructs WAFInvalidRegexPatternException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newWAFInvalidRegexPatternException' :: ( { "message" :: Maybe (ErrorMessage') } -> {"message" :: Maybe (ErrorMessage') } ) -> WAFInvalidRegexPatternException
newWAFInvalidRegexPatternException'  customize = (WAFInvalidRegexPatternException <<< customize) { "message": Nothing }



-- | <p>The operation exceeds a resource limit, for example, the maximum number of <code>WebACL</code> objects that you can create for an AWS account. For more information, see <a href="http://docs.aws.amazon.com/waf/latest/developerguide/limits.html">Limits</a> in the <i>AWS WAF Developer Guide</i>.</p>
newtype WAFLimitsExceededException = WAFLimitsExceededException 
  { "message" :: Maybe (ErrorMessage')
  }
derive instance newtypeWAFLimitsExceededException :: Newtype WAFLimitsExceededException _
derive instance repGenericWAFLimitsExceededException :: Generic WAFLimitsExceededException _
instance showWAFLimitsExceededException :: Show WAFLimitsExceededException where show = genericShow
instance decodeWAFLimitsExceededException :: Decode WAFLimitsExceededException where decode = genericDecode options
instance encodeWAFLimitsExceededException :: Encode WAFLimitsExceededException where encode = genericEncode options

-- | Constructs WAFLimitsExceededException from required parameters
newWAFLimitsExceededException :: WAFLimitsExceededException
newWAFLimitsExceededException  = WAFLimitsExceededException { "message": Nothing }

-- | Constructs WAFLimitsExceededException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newWAFLimitsExceededException' :: ( { "message" :: Maybe (ErrorMessage') } -> {"message" :: Maybe (ErrorMessage') } ) -> WAFLimitsExceededException
newWAFLimitsExceededException'  customize = (WAFLimitsExceededException <<< customize) { "message": Nothing }



-- | <p>The operation failed because you tried to delete an object that isn't empty. For example:</p> <ul> <li> <p>You tried to delete a <code>WebACL</code> that still contains one or more <code>Rule</code> objects.</p> </li> <li> <p>You tried to delete a <code>Rule</code> that still contains one or more <code>ByteMatchSet</code> objects or other predicates.</p> </li> <li> <p>You tried to delete a <code>ByteMatchSet</code> that contains one or more <code>ByteMatchTuple</code> objects.</p> </li> <li> <p>You tried to delete an <code>IPSet</code> that references one or more IP addresses.</p> </li> </ul>
newtype WAFNonEmptyEntityException = WAFNonEmptyEntityException 
  { "message" :: Maybe (ErrorMessage')
  }
derive instance newtypeWAFNonEmptyEntityException :: Newtype WAFNonEmptyEntityException _
derive instance repGenericWAFNonEmptyEntityException :: Generic WAFNonEmptyEntityException _
instance showWAFNonEmptyEntityException :: Show WAFNonEmptyEntityException where show = genericShow
instance decodeWAFNonEmptyEntityException :: Decode WAFNonEmptyEntityException where decode = genericDecode options
instance encodeWAFNonEmptyEntityException :: Encode WAFNonEmptyEntityException where encode = genericEncode options

-- | Constructs WAFNonEmptyEntityException from required parameters
newWAFNonEmptyEntityException :: WAFNonEmptyEntityException
newWAFNonEmptyEntityException  = WAFNonEmptyEntityException { "message": Nothing }

-- | Constructs WAFNonEmptyEntityException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newWAFNonEmptyEntityException' :: ( { "message" :: Maybe (ErrorMessage') } -> {"message" :: Maybe (ErrorMessage') } ) -> WAFNonEmptyEntityException
newWAFNonEmptyEntityException'  customize = (WAFNonEmptyEntityException <<< customize) { "message": Nothing }



-- | <p>The operation failed because you tried to add an object to or delete an object from another object that doesn't exist. For example:</p> <ul> <li> <p>You tried to add a <code>Rule</code> to or delete a <code>Rule</code> from a <code>WebACL</code> that doesn't exist.</p> </li> <li> <p>You tried to add a <code>ByteMatchSet</code> to or delete a <code>ByteMatchSet</code> from a <code>Rule</code> that doesn't exist.</p> </li> <li> <p>You tried to add an IP address to or delete an IP address from an <code>IPSet</code> that doesn't exist.</p> </li> <li> <p>You tried to add a <code>ByteMatchTuple</code> to or delete a <code>ByteMatchTuple</code> from a <code>ByteMatchSet</code> that doesn't exist.</p> </li> </ul>
newtype WAFNonexistentContainerException = WAFNonexistentContainerException 
  { "message" :: Maybe (ErrorMessage')
  }
derive instance newtypeWAFNonexistentContainerException :: Newtype WAFNonexistentContainerException _
derive instance repGenericWAFNonexistentContainerException :: Generic WAFNonexistentContainerException _
instance showWAFNonexistentContainerException :: Show WAFNonexistentContainerException where show = genericShow
instance decodeWAFNonexistentContainerException :: Decode WAFNonexistentContainerException where decode = genericDecode options
instance encodeWAFNonexistentContainerException :: Encode WAFNonexistentContainerException where encode = genericEncode options

-- | Constructs WAFNonexistentContainerException from required parameters
newWAFNonexistentContainerException :: WAFNonexistentContainerException
newWAFNonexistentContainerException  = WAFNonexistentContainerException { "message": Nothing }

-- | Constructs WAFNonexistentContainerException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newWAFNonexistentContainerException' :: ( { "message" :: Maybe (ErrorMessage') } -> {"message" :: Maybe (ErrorMessage') } ) -> WAFNonexistentContainerException
newWAFNonexistentContainerException'  customize = (WAFNonexistentContainerException <<< customize) { "message": Nothing }



-- | <p>The operation failed because the referenced object doesn't exist.</p>
newtype WAFNonexistentItemException = WAFNonexistentItemException 
  { "message" :: Maybe (ErrorMessage')
  }
derive instance newtypeWAFNonexistentItemException :: Newtype WAFNonexistentItemException _
derive instance repGenericWAFNonexistentItemException :: Generic WAFNonexistentItemException _
instance showWAFNonexistentItemException :: Show WAFNonexistentItemException where show = genericShow
instance decodeWAFNonexistentItemException :: Decode WAFNonexistentItemException where decode = genericDecode options
instance encodeWAFNonexistentItemException :: Encode WAFNonexistentItemException where encode = genericEncode options

-- | Constructs WAFNonexistentItemException from required parameters
newWAFNonexistentItemException :: WAFNonexistentItemException
newWAFNonexistentItemException  = WAFNonexistentItemException { "message": Nothing }

-- | Constructs WAFNonexistentItemException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newWAFNonexistentItemException' :: ( { "message" :: Maybe (ErrorMessage') } -> {"message" :: Maybe (ErrorMessage') } ) -> WAFNonexistentItemException
newWAFNonexistentItemException'  customize = (WAFNonexistentItemException <<< customize) { "message": Nothing }



-- | <p>The operation failed because you tried to delete an object that is still in use. For example:</p> <ul> <li> <p>You tried to delete a <code>ByteMatchSet</code> that is still referenced by a <code>Rule</code>.</p> </li> <li> <p>You tried to delete a <code>Rule</code> that is still referenced by a <code>WebACL</code>.</p> </li> </ul>
newtype WAFReferencedItemException = WAFReferencedItemException 
  { "message" :: Maybe (ErrorMessage')
  }
derive instance newtypeWAFReferencedItemException :: Newtype WAFReferencedItemException _
derive instance repGenericWAFReferencedItemException :: Generic WAFReferencedItemException _
instance showWAFReferencedItemException :: Show WAFReferencedItemException where show = genericShow
instance decodeWAFReferencedItemException :: Decode WAFReferencedItemException where decode = genericDecode options
instance encodeWAFReferencedItemException :: Encode WAFReferencedItemException where encode = genericEncode options

-- | Constructs WAFReferencedItemException from required parameters
newWAFReferencedItemException :: WAFReferencedItemException
newWAFReferencedItemException  = WAFReferencedItemException { "message": Nothing }

-- | Constructs WAFReferencedItemException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newWAFReferencedItemException' :: ( { "message" :: Maybe (ErrorMessage') } -> {"message" :: Maybe (ErrorMessage') } ) -> WAFReferencedItemException
newWAFReferencedItemException'  customize = (WAFReferencedItemException <<< customize) { "message": Nothing }



-- | <p>The operation failed because you tried to create, update, or delete an object by using a change token that has already been used.</p>
newtype WAFStaleDataException = WAFStaleDataException 
  { "message" :: Maybe (ErrorMessage')
  }
derive instance newtypeWAFStaleDataException :: Newtype WAFStaleDataException _
derive instance repGenericWAFStaleDataException :: Generic WAFStaleDataException _
instance showWAFStaleDataException :: Show WAFStaleDataException where show = genericShow
instance decodeWAFStaleDataException :: Decode WAFStaleDataException where decode = genericDecode options
instance encodeWAFStaleDataException :: Encode WAFStaleDataException where encode = genericEncode options

-- | Constructs WAFStaleDataException from required parameters
newWAFStaleDataException :: WAFStaleDataException
newWAFStaleDataException  = WAFStaleDataException { "message": Nothing }

-- | Constructs WAFStaleDataException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newWAFStaleDataException' :: ( { "message" :: Maybe (ErrorMessage') } -> {"message" :: Maybe (ErrorMessage') } ) -> WAFStaleDataException
newWAFStaleDataException'  customize = (WAFStaleDataException <<< customize) { "message": Nothing }



-- | <p>The specified subscription does not exist.</p>
newtype WAFSubscriptionNotFoundException = WAFSubscriptionNotFoundException 
  { "message" :: Maybe (ErrorMessage')
  }
derive instance newtypeWAFSubscriptionNotFoundException :: Newtype WAFSubscriptionNotFoundException _
derive instance repGenericWAFSubscriptionNotFoundException :: Generic WAFSubscriptionNotFoundException _
instance showWAFSubscriptionNotFoundException :: Show WAFSubscriptionNotFoundException where show = genericShow
instance decodeWAFSubscriptionNotFoundException :: Decode WAFSubscriptionNotFoundException where decode = genericDecode options
instance encodeWAFSubscriptionNotFoundException :: Encode WAFSubscriptionNotFoundException where encode = genericEncode options

-- | Constructs WAFSubscriptionNotFoundException from required parameters
newWAFSubscriptionNotFoundException :: WAFSubscriptionNotFoundException
newWAFSubscriptionNotFoundException  = WAFSubscriptionNotFoundException { "message": Nothing }

-- | Constructs WAFSubscriptionNotFoundException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newWAFSubscriptionNotFoundException' :: ( { "message" :: Maybe (ErrorMessage') } -> {"message" :: Maybe (ErrorMessage') } ) -> WAFSubscriptionNotFoundException
newWAFSubscriptionNotFoundException'  customize = (WAFSubscriptionNotFoundException <<< customize) { "message": Nothing }



-- | <p>The operation failed because the entity referenced is temporarily unavailable. Retry your request.</p>
newtype WAFUnavailableEntityException = WAFUnavailableEntityException 
  { "message" :: Maybe (ErrorMessage')
  }
derive instance newtypeWAFUnavailableEntityException :: Newtype WAFUnavailableEntityException _
derive instance repGenericWAFUnavailableEntityException :: Generic WAFUnavailableEntityException _
instance showWAFUnavailableEntityException :: Show WAFUnavailableEntityException where show = genericShow
instance decodeWAFUnavailableEntityException :: Decode WAFUnavailableEntityException where decode = genericDecode options
instance encodeWAFUnavailableEntityException :: Encode WAFUnavailableEntityException where encode = genericEncode options

-- | Constructs WAFUnavailableEntityException from required parameters
newWAFUnavailableEntityException :: WAFUnavailableEntityException
newWAFUnavailableEntityException  = WAFUnavailableEntityException { "message": Nothing }

-- | Constructs WAFUnavailableEntityException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newWAFUnavailableEntityException' :: ( { "message" :: Maybe (ErrorMessage') } -> {"message" :: Maybe (ErrorMessage') } ) -> WAFUnavailableEntityException
newWAFUnavailableEntityException'  customize = (WAFUnavailableEntityException <<< customize) { "message": Nothing }



-- | <p>For the action that is associated with a rule in a <code>WebACL</code>, specifies the action that you want AWS WAF to perform when a web request matches all of the conditions in a rule. For the default action in a <code>WebACL</code>, specifies the action that you want AWS WAF to take when a web request doesn't match all of the conditions in any of the rules in a <code>WebACL</code>. </p>
newtype WafAction = WafAction 
  { "Type" :: (WafActionType)
  }
derive instance newtypeWafAction :: Newtype WafAction _
derive instance repGenericWafAction :: Generic WafAction _
instance showWafAction :: Show WafAction where show = genericShow
instance decodeWafAction :: Decode WafAction where decode = genericDecode options
instance encodeWafAction :: Encode WafAction where encode = genericEncode options

-- | Constructs WafAction from required parameters
newWafAction :: WafActionType -> WafAction
newWafAction _Type = WafAction { "Type": _Type }

-- | Constructs WafAction's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newWafAction' :: WafActionType -> ( { "Type" :: (WafActionType) } -> {"Type" :: (WafActionType) } ) -> WafAction
newWafAction' _Type customize = (WafAction <<< customize) { "Type": _Type }



newtype WafActionType = WafActionType String
derive instance newtypeWafActionType :: Newtype WafActionType _
derive instance repGenericWafActionType :: Generic WafActionType _
instance showWafActionType :: Show WafActionType where show = genericShow
instance decodeWafActionType :: Decode WafActionType where decode = genericDecode options
instance encodeWafActionType :: Encode WafActionType where encode = genericEncode options



-- | <p>The action to take if any rule within the <code>RuleGroup</code> matches a request. </p>
newtype WafOverrideAction = WafOverrideAction 
  { "Type" :: (WafOverrideActionType)
  }
derive instance newtypeWafOverrideAction :: Newtype WafOverrideAction _
derive instance repGenericWafOverrideAction :: Generic WafOverrideAction _
instance showWafOverrideAction :: Show WafOverrideAction where show = genericShow
instance decodeWafOverrideAction :: Decode WafOverrideAction where decode = genericDecode options
instance encodeWafOverrideAction :: Encode WafOverrideAction where encode = genericEncode options

-- | Constructs WafOverrideAction from required parameters
newWafOverrideAction :: WafOverrideActionType -> WafOverrideAction
newWafOverrideAction _Type = WafOverrideAction { "Type": _Type }

-- | Constructs WafOverrideAction's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newWafOverrideAction' :: WafOverrideActionType -> ( { "Type" :: (WafOverrideActionType) } -> {"Type" :: (WafOverrideActionType) } ) -> WafOverrideAction
newWafOverrideAction' _Type customize = (WafOverrideAction <<< customize) { "Type": _Type }



newtype WafOverrideActionType = WafOverrideActionType String
derive instance newtypeWafOverrideActionType :: Newtype WafOverrideActionType _
derive instance repGenericWafOverrideActionType :: Generic WafOverrideActionType _
instance showWafOverrideActionType :: Show WafOverrideActionType where show = genericShow
instance decodeWafOverrideActionType :: Decode WafOverrideActionType where decode = genericDecode options
instance encodeWafOverrideActionType :: Encode WafOverrideActionType where encode = genericEncode options



newtype WafRuleType = WafRuleType String
derive instance newtypeWafRuleType :: Newtype WafRuleType _
derive instance repGenericWafRuleType :: Generic WafRuleType _
instance showWafRuleType :: Show WafRuleType where show = genericShow
instance decodeWafRuleType :: Decode WafRuleType where decode = genericDecode options
instance encodeWafRuleType :: Encode WafRuleType where encode = genericEncode options



-- | <p>Contains the <code>Rules</code> that identify the requests that you want to allow, block, or count. In a <code>WebACL</code>, you also specify a default action (<code>ALLOW</code> or <code>BLOCK</code>), and the action for each <code>Rule</code> that you add to a <code>WebACL</code>, for example, block requests from specified IP addresses or block requests from specified referrers. You also associate the <code>WebACL</code> with a CloudFront distribution to identify the requests that you want AWS WAF to filter. If you add more than one <code>Rule</code> to a <code>WebACL</code>, a request needs to match only one of the specifications to be allowed, blocked, or counted. For more information, see <a>UpdateWebACL</a>.</p>
newtype WebACL = WebACL 
  { "WebACLId" :: (ResourceId)
  , "Name" :: Maybe (ResourceName)
  , "MetricName" :: Maybe (MetricName)
  , "DefaultAction" :: (WafAction)
  , "Rules" :: (ActivatedRules)
  }
derive instance newtypeWebACL :: Newtype WebACL _
derive instance repGenericWebACL :: Generic WebACL _
instance showWebACL :: Show WebACL where show = genericShow
instance decodeWebACL :: Decode WebACL where decode = genericDecode options
instance encodeWebACL :: Encode WebACL where encode = genericEncode options

-- | Constructs WebACL from required parameters
newWebACL :: WafAction -> ActivatedRules -> ResourceId -> WebACL
newWebACL _DefaultAction _Rules _WebACLId = WebACL { "DefaultAction": _DefaultAction, "Rules": _Rules, "WebACLId": _WebACLId, "MetricName": Nothing, "Name": Nothing }

-- | Constructs WebACL's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newWebACL' :: WafAction -> ActivatedRules -> ResourceId -> ( { "WebACLId" :: (ResourceId) , "Name" :: Maybe (ResourceName) , "MetricName" :: Maybe (MetricName) , "DefaultAction" :: (WafAction) , "Rules" :: (ActivatedRules) } -> {"WebACLId" :: (ResourceId) , "Name" :: Maybe (ResourceName) , "MetricName" :: Maybe (MetricName) , "DefaultAction" :: (WafAction) , "Rules" :: (ActivatedRules) } ) -> WebACL
newWebACL' _DefaultAction _Rules _WebACLId customize = (WebACL <<< customize) { "DefaultAction": _DefaultAction, "Rules": _Rules, "WebACLId": _WebACLId, "MetricName": Nothing, "Name": Nothing }



newtype WebACLSummaries = WebACLSummaries (Array WebACLSummary)
derive instance newtypeWebACLSummaries :: Newtype WebACLSummaries _
derive instance repGenericWebACLSummaries :: Generic WebACLSummaries _
instance showWebACLSummaries :: Show WebACLSummaries where show = genericShow
instance decodeWebACLSummaries :: Decode WebACLSummaries where decode = genericDecode options
instance encodeWebACLSummaries :: Encode WebACLSummaries where encode = genericEncode options



-- | <p>Contains the identifier and the name or description of the <a>WebACL</a>.</p>
newtype WebACLSummary = WebACLSummary 
  { "WebACLId" :: (ResourceId)
  , "Name" :: (ResourceName)
  }
derive instance newtypeWebACLSummary :: Newtype WebACLSummary _
derive instance repGenericWebACLSummary :: Generic WebACLSummary _
instance showWebACLSummary :: Show WebACLSummary where show = genericShow
instance decodeWebACLSummary :: Decode WebACLSummary where decode = genericDecode options
instance encodeWebACLSummary :: Encode WebACLSummary where encode = genericEncode options

-- | Constructs WebACLSummary from required parameters
newWebACLSummary :: ResourceName -> ResourceId -> WebACLSummary
newWebACLSummary _Name _WebACLId = WebACLSummary { "Name": _Name, "WebACLId": _WebACLId }

-- | Constructs WebACLSummary's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newWebACLSummary' :: ResourceName -> ResourceId -> ( { "WebACLId" :: (ResourceId) , "Name" :: (ResourceName) } -> {"WebACLId" :: (ResourceId) , "Name" :: (ResourceName) } ) -> WebACLSummary
newWebACLSummary' _Name _WebACLId customize = (WebACLSummary <<< customize) { "Name": _Name, "WebACLId": _WebACLId }



-- | <p>Specifies whether to insert a <code>Rule</code> into or delete a <code>Rule</code> from a <code>WebACL</code>.</p>
newtype WebACLUpdate = WebACLUpdate 
  { "Action" :: (ChangeAction)
  , "ActivatedRule" :: (ActivatedRule)
  }
derive instance newtypeWebACLUpdate :: Newtype WebACLUpdate _
derive instance repGenericWebACLUpdate :: Generic WebACLUpdate _
instance showWebACLUpdate :: Show WebACLUpdate where show = genericShow
instance decodeWebACLUpdate :: Decode WebACLUpdate where decode = genericDecode options
instance encodeWebACLUpdate :: Encode WebACLUpdate where encode = genericEncode options

-- | Constructs WebACLUpdate from required parameters
newWebACLUpdate :: ChangeAction -> ActivatedRule -> WebACLUpdate
newWebACLUpdate _Action _ActivatedRule = WebACLUpdate { "Action": _Action, "ActivatedRule": _ActivatedRule }

-- | Constructs WebACLUpdate's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newWebACLUpdate' :: ChangeAction -> ActivatedRule -> ( { "Action" :: (ChangeAction) , "ActivatedRule" :: (ActivatedRule) } -> {"Action" :: (ChangeAction) , "ActivatedRule" :: (ActivatedRule) } ) -> WebACLUpdate
newWebACLUpdate' _Action _ActivatedRule customize = (WebACLUpdate <<< customize) { "Action": _Action, "ActivatedRule": _ActivatedRule }



newtype WebACLUpdates = WebACLUpdates (Array WebACLUpdate)
derive instance newtypeWebACLUpdates :: Newtype WebACLUpdates _
derive instance repGenericWebACLUpdates :: Generic WebACLUpdates _
instance showWebACLUpdates :: Show WebACLUpdates where show = genericShow
instance decodeWebACLUpdates :: Decode WebACLUpdates where decode = genericDecode options
instance encodeWebACLUpdates :: Encode WebACLUpdates where encode = genericEncode options



-- | <p>A complex type that contains <code>XssMatchTuple</code> objects, which specify the parts of web requests that you want AWS WAF to inspect for cross-site scripting attacks and, if you want AWS WAF to inspect a header, the name of the header. If a <code>XssMatchSet</code> contains more than one <code>XssMatchTuple</code> object, a request needs to include cross-site scripting attacks in only one of the specified parts of the request to be considered a match.</p>
newtype XssMatchSet = XssMatchSet 
  { "XssMatchSetId" :: (ResourceId)
  , "Name" :: Maybe (ResourceName)
  , "XssMatchTuples" :: (XssMatchTuples)
  }
derive instance newtypeXssMatchSet :: Newtype XssMatchSet _
derive instance repGenericXssMatchSet :: Generic XssMatchSet _
instance showXssMatchSet :: Show XssMatchSet where show = genericShow
instance decodeXssMatchSet :: Decode XssMatchSet where decode = genericDecode options
instance encodeXssMatchSet :: Encode XssMatchSet where encode = genericEncode options

-- | Constructs XssMatchSet from required parameters
newXssMatchSet :: ResourceId -> XssMatchTuples -> XssMatchSet
newXssMatchSet _XssMatchSetId _XssMatchTuples = XssMatchSet { "XssMatchSetId": _XssMatchSetId, "XssMatchTuples": _XssMatchTuples, "Name": Nothing }

-- | Constructs XssMatchSet's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newXssMatchSet' :: ResourceId -> XssMatchTuples -> ( { "XssMatchSetId" :: (ResourceId) , "Name" :: Maybe (ResourceName) , "XssMatchTuples" :: (XssMatchTuples) } -> {"XssMatchSetId" :: (ResourceId) , "Name" :: Maybe (ResourceName) , "XssMatchTuples" :: (XssMatchTuples) } ) -> XssMatchSet
newXssMatchSet' _XssMatchSetId _XssMatchTuples customize = (XssMatchSet <<< customize) { "XssMatchSetId": _XssMatchSetId, "XssMatchTuples": _XssMatchTuples, "Name": Nothing }



newtype XssMatchSetSummaries = XssMatchSetSummaries (Array XssMatchSetSummary)
derive instance newtypeXssMatchSetSummaries :: Newtype XssMatchSetSummaries _
derive instance repGenericXssMatchSetSummaries :: Generic XssMatchSetSummaries _
instance showXssMatchSetSummaries :: Show XssMatchSetSummaries where show = genericShow
instance decodeXssMatchSetSummaries :: Decode XssMatchSetSummaries where decode = genericDecode options
instance encodeXssMatchSetSummaries :: Encode XssMatchSetSummaries where encode = genericEncode options



-- | <p>The <code>Id</code> and <code>Name</code> of an <code>XssMatchSet</code>.</p>
newtype XssMatchSetSummary = XssMatchSetSummary 
  { "XssMatchSetId" :: (ResourceId)
  , "Name" :: (ResourceName)
  }
derive instance newtypeXssMatchSetSummary :: Newtype XssMatchSetSummary _
derive instance repGenericXssMatchSetSummary :: Generic XssMatchSetSummary _
instance showXssMatchSetSummary :: Show XssMatchSetSummary where show = genericShow
instance decodeXssMatchSetSummary :: Decode XssMatchSetSummary where decode = genericDecode options
instance encodeXssMatchSetSummary :: Encode XssMatchSetSummary where encode = genericEncode options

-- | Constructs XssMatchSetSummary from required parameters
newXssMatchSetSummary :: ResourceName -> ResourceId -> XssMatchSetSummary
newXssMatchSetSummary _Name _XssMatchSetId = XssMatchSetSummary { "Name": _Name, "XssMatchSetId": _XssMatchSetId }

-- | Constructs XssMatchSetSummary's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newXssMatchSetSummary' :: ResourceName -> ResourceId -> ( { "XssMatchSetId" :: (ResourceId) , "Name" :: (ResourceName) } -> {"XssMatchSetId" :: (ResourceId) , "Name" :: (ResourceName) } ) -> XssMatchSetSummary
newXssMatchSetSummary' _Name _XssMatchSetId customize = (XssMatchSetSummary <<< customize) { "Name": _Name, "XssMatchSetId": _XssMatchSetId }



-- | <p>Specifies the part of a web request that you want to inspect for cross-site scripting attacks and indicates whether you want to add the specification to an <a>XssMatchSet</a> or delete it from an <code>XssMatchSet</code>.</p>
newtype XssMatchSetUpdate = XssMatchSetUpdate 
  { "Action" :: (ChangeAction)
  , "XssMatchTuple" :: (XssMatchTuple)
  }
derive instance newtypeXssMatchSetUpdate :: Newtype XssMatchSetUpdate _
derive instance repGenericXssMatchSetUpdate :: Generic XssMatchSetUpdate _
instance showXssMatchSetUpdate :: Show XssMatchSetUpdate where show = genericShow
instance decodeXssMatchSetUpdate :: Decode XssMatchSetUpdate where decode = genericDecode options
instance encodeXssMatchSetUpdate :: Encode XssMatchSetUpdate where encode = genericEncode options

-- | Constructs XssMatchSetUpdate from required parameters
newXssMatchSetUpdate :: ChangeAction -> XssMatchTuple -> XssMatchSetUpdate
newXssMatchSetUpdate _Action _XssMatchTuple = XssMatchSetUpdate { "Action": _Action, "XssMatchTuple": _XssMatchTuple }

-- | Constructs XssMatchSetUpdate's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newXssMatchSetUpdate' :: ChangeAction -> XssMatchTuple -> ( { "Action" :: (ChangeAction) , "XssMatchTuple" :: (XssMatchTuple) } -> {"Action" :: (ChangeAction) , "XssMatchTuple" :: (XssMatchTuple) } ) -> XssMatchSetUpdate
newXssMatchSetUpdate' _Action _XssMatchTuple customize = (XssMatchSetUpdate <<< customize) { "Action": _Action, "XssMatchTuple": _XssMatchTuple }



newtype XssMatchSetUpdates = XssMatchSetUpdates (Array XssMatchSetUpdate)
derive instance newtypeXssMatchSetUpdates :: Newtype XssMatchSetUpdates _
derive instance repGenericXssMatchSetUpdates :: Generic XssMatchSetUpdates _
instance showXssMatchSetUpdates :: Show XssMatchSetUpdates where show = genericShow
instance decodeXssMatchSetUpdates :: Decode XssMatchSetUpdates where decode = genericDecode options
instance encodeXssMatchSetUpdates :: Encode XssMatchSetUpdates where encode = genericEncode options



-- | <p>Specifies the part of a web request that you want AWS WAF to inspect for cross-site scripting attacks and, if you want AWS WAF to inspect a header, the name of the header.</p>
newtype XssMatchTuple = XssMatchTuple 
  { "FieldToMatch" :: (FieldToMatch)
  , "TextTransformation" :: (TextTransformation)
  }
derive instance newtypeXssMatchTuple :: Newtype XssMatchTuple _
derive instance repGenericXssMatchTuple :: Generic XssMatchTuple _
instance showXssMatchTuple :: Show XssMatchTuple where show = genericShow
instance decodeXssMatchTuple :: Decode XssMatchTuple where decode = genericDecode options
instance encodeXssMatchTuple :: Encode XssMatchTuple where encode = genericEncode options

-- | Constructs XssMatchTuple from required parameters
newXssMatchTuple :: FieldToMatch -> TextTransformation -> XssMatchTuple
newXssMatchTuple _FieldToMatch _TextTransformation = XssMatchTuple { "FieldToMatch": _FieldToMatch, "TextTransformation": _TextTransformation }

-- | Constructs XssMatchTuple's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newXssMatchTuple' :: FieldToMatch -> TextTransformation -> ( { "FieldToMatch" :: (FieldToMatch) , "TextTransformation" :: (TextTransformation) } -> {"FieldToMatch" :: (FieldToMatch) , "TextTransformation" :: (TextTransformation) } ) -> XssMatchTuple
newXssMatchTuple' _FieldToMatch _TextTransformation customize = (XssMatchTuple <<< customize) { "FieldToMatch": _FieldToMatch, "TextTransformation": _TextTransformation }



newtype XssMatchTuples = XssMatchTuples (Array XssMatchTuple)
derive instance newtypeXssMatchTuples :: Newtype XssMatchTuples _
derive instance repGenericXssMatchTuples :: Generic XssMatchTuples _
instance showXssMatchTuples :: Show XssMatchTuples where show = genericShow
instance decodeXssMatchTuples :: Decode XssMatchTuples where decode = genericDecode options
instance encodeXssMatchTuples :: Encode XssMatchTuples where encode = genericEncode options



newtype ErrorMessage' = ErrorMessage' String
derive instance newtypeErrorMessage' :: Newtype ErrorMessage' _
derive instance repGenericErrorMessage' :: Generic ErrorMessage' _
instance showErrorMessage' :: Show ErrorMessage' where show = genericShow
instance decodeErrorMessage' :: Decode ErrorMessage' where decode = genericDecode options
instance encodeErrorMessage' :: Encode ErrorMessage' where encode = genericEncode options

