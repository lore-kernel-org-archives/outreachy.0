Received: from NAM02-BN1-obe.outbound.protection.outlook.com (mail-bn1nam07on2085.outbound.protection.outlook.com [40.107.212.85])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3F4A1FC0
	for <outreachy@lists.linux.dev>; Thu, 21 Apr 2022 15:06:02 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mPOrVIhHLilsduOXDT484FZZgZkE3/qOXlZ6umWvQvLgJ42s7klp0KfRPV470dUCKOsCMArJ3NpKXM05Im8amIVEVxdCzVyLJ+vruAFsU/EAGl/72WiBf8O2eNtH4mhwD0rqtEj3YSBer+jTokaPg6WYEgXrmA6xXhNuU/KOqmhIeCz8QepKzAjuXBtRWvEdSfxoq+77quMAeJqlpJyMdsVb5XXqXut+S8rYrS2m+CHypLwT54OPYpJ9UnhCtrOy0VnYiKlPbJJdYvVinoYESTHy+kJy3Dh1p/OlqyQ7y/UGja5RhJNMdykieZKkl2yFaSiqiRqPa+4fhON5nSwFZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3J6/HI4XDRHvH/bViwB0WYYR9Sgq9pabz+2H69B8Drc=;
 b=ZKkskzAd9BMhKOlen3tDTTZ17aiL6C5Sh0RyZiZYw/3sgq6Cbt9FdPAShWVF/1COOu10EK5v12VgeU0IzT9kgYuvkAYmFBt11dUjPD6tpp2HigTHHT+22qmkbDmLbVc4ZIioC/9SQ1oPNUdtnRJT2ffBS0nVPb0yvuBHdbQ8QY6LJQeNcQVU0dpuOCqwyn6J0lTut72rcAliQ3shiz4M3cdYHnh3Tb/0zRMCZJkL+w8fP6JOgiPs6KhotrznW9lZr1S7g/pNVtrNO1w/XB+qLtdtZK/yNhUsAROg8B1X4Ym02cOBIf7VcRMFg8JR3twIVpuiQYGFk6Cm17f/TqPr5w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3J6/HI4XDRHvH/bViwB0WYYR9Sgq9pabz+2H69B8Drc=;
 b=VQ7NvaBsAaGBSROcwGasUhbbUUIj7oEr2hNlUnj372TcZy+jl7WejUx5tEgpMHUKlTpnoCyS5pKjsWKagdCKO0jv8oyvBMj3a964jHcn7eeHyACrIh644bqylwVg4B5tlPwi4pkS3kcxU9mIo4GjEaPd1bzHjMn6KFjOpI+X30OFQNesIuBXP93XRJP14HvEM2KY4pSUAty1iExMKp4Mo0tzlx1JssxXvvS3ZJSlZd9O/4UHaZ1Y3JhRfTKFh6dpBz8PPSpBGmLtyLDQAbW1PE4iOpjBLU1GcSve6yn4TMytFTIXh2KliOXuia5fMI/DsitFU3NlM/gLMwBuP9nfoA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from SJ0PR12MB5504.namprd12.prod.outlook.com (2603:10b6:a03:3ad::24)
 by BYAPR12MB2984.namprd12.prod.outlook.com (2603:10b6:a03:da::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5186.14; Thu, 21 Apr
 2022 15:06:00 +0000
Received: from SJ0PR12MB5504.namprd12.prod.outlook.com
 ([fe80::3887:c9c8:b2de:fe5f]) by SJ0PR12MB5504.namprd12.prod.outlook.com
 ([fe80::3887:c9c8:b2de:fe5f%8]) with mapi id 15.20.5186.015; Thu, 21 Apr 2022
 15:06:00 +0000
Message-ID: <637d9505-d7c4-1a4d-d5ea-4882e3f4b856@nvidia.com>
Date: Thu, 21 Apr 2022 08:05:57 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: Fwd: [PATCH net-next] selftests: net: vrf_strict_mode_test: add
 support to select a test to run
Content-Language: en-US
From: Roopa Prabhu <roopa@nvidia.com>
To: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>
Cc: Jaehee Park <jhpark1013@gmail.com>, outreachy@lists.linux.dev
References: <41a48002-817b-4366-d316-9d94e8d81a79@nvidia.com>
 <ea64041b-635b-8c71-c9ac-b158403a276e@nvidia.com>
In-Reply-To: <ea64041b-635b-8c71-c9ac-b158403a276e@nvidia.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: SJ0PR03CA0268.namprd03.prod.outlook.com
 (2603:10b6:a03:3a0::33) To SJ0PR12MB5504.namprd12.prod.outlook.com
 (2603:10b6:a03:3ad::24)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 4184d6a4-9f98-47fa-7999-08da23a871df
X-MS-TrafficTypeDiagnostic: BYAPR12MB2984:EE_
X-Microsoft-Antispam-PRVS:
	<BYAPR12MB2984B55C889CB58E238A33EDCBF49@BYAPR12MB2984.namprd12.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
	4rH4xacwYqWJv4pl9x+apq9NKQ5AtwTOwUPpXze06bjDMzB/aCEV77xEUic0WJLdGEt6cJsDZkRwwjEspJ6MjpyKjIHI4LVVHZgPxmlxswruNQKA0YGVvBXs06ElZL/kfUuZ3p4SaFzvDkbR0IedxRGIzUrthiCHSZ/CC7y+rLa/LU4EXHPFCgfv4zHCnqhhCtVCP2kI6xSuYK0C4xHC0HIxeoWhDNorkIAfMNJHrHU3TmO3LydVjo+S9TCK1rtiPwQHQh9TS/x2XH+W5J5CciY5SaMftmkh8QgEnxRtUcjZ9DEHuJpa9+Xy3TgZORzC3F9nsJe0X06IbY6Z83VjzaPSKIiO/H77TqcD02ttAbmR7H1tU9Ty1lV9St2vFugKuj6bqRgHMzfRM+a8JF4Ix3A40KiDdJc6Y3nw0jjCdZwmszEJ6KiiQDGKSiY1KE7E52oYW6YC1b45lATqayxC1Mm9Frl9Yn5Eve7dlmeRh+UqEoaLN4V89K8xtPYcQCxc73JA5I3lwlo5yfDmHv0ZX7B+3NTX+w+tFCI38k+7VXBtS0vJRk/bDBdWk1aR/xQHZJg0hbh1/xvbNAIXG+3C9x21PG9fOh9ZU472NYtjXbKLPSIsbKvF4kv3BGSLYh/zAGCvmUb0Dx5S28NXvKZLP1EBMmT1Jul3FlX86l91qrscuXkdIbqzKA4/faOTM/hwr35U8OkLaExFhDBcL5imFJA3cr8j7oGbAxz3HIS6BHM=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR12MB5504.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(6512007)(2616005)(66476007)(53546011)(66556008)(66946007)(8676002)(186003)(36756003)(4326008)(6916009)(31686004)(316002)(6506007)(26005)(6486002)(31696002)(38100700002)(83380400001)(8936002)(508600001)(5660300002)(6666004)(86362001)(2906002)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?RURONWtEWE1QRDJGcXNFRFl3Vm9CTHBpcXM0NGdMOEpiRkFaaWVGSUJhWjFL?=
 =?utf-8?B?bmdBNGI3UTVXY0VqNWJWTUJQbHUrbm5mNzdqQ083TE1jblQ0dFR5bEZ0RFRn?=
 =?utf-8?B?R0hLRkRsVjFJZzFXMUs1cVZNaUovelNobjlFMkYveUUzeGJ2UUR4YjVDeDFV?=
 =?utf-8?B?Rk4vMTBNUSsxcWN0UmpuR2VJc3ZsS2dWL3hiWDBpQnlOekY3ellzQUgvK1li?=
 =?utf-8?B?cUNLbVA3Ny81QzVFaFBrUlJyOGh1OCtiYkdUYU0xQzVtdmQ3bkkrSU5lUEtt?=
 =?utf-8?B?S0svMGtKN1N3amtyaTZoSmFBUDA0eE9LZHJZYTFKL3dXbElEWnBHMFgzY0Vh?=
 =?utf-8?B?SkZZR0x6VG5xVGltSjJhN0U0akJOSVd2aStGbWFqMmhYdENrRkJ2VWpxbFAw?=
 =?utf-8?B?aGlFR2xxTjF4cC9JaWtCU3dtTHk5U3JHU2EvV1hycW1ia2k0YTBPSFBHYzY3?=
 =?utf-8?B?Y1lYVW03emw2ODdjeDVwcitjWnhObndNbE5RendSU044cm5kT1BkRW5YM2tj?=
 =?utf-8?B?MTZYbVROelAyUzhMYWc2Nnc1akw0L1oyTEJER0FNKzJuN3FLM3ROTXdUTGEy?=
 =?utf-8?B?bklLdXVtcUdxSnpiSDNCTUVuWUlmaGFnakxRSXdybGNMV1FraTNTb3Fqb3Rp?=
 =?utf-8?B?QjBqNWJ3Nzh4dnFteVROQ21SNkZ2Rk9PRDJkM0tLMDBmS2FzazMva3VhN3lJ?=
 =?utf-8?B?bktyTkJzdlk1T21YbER1ak9paWd3M3U5eXZ5YzlxWEpldVgrNFpXYXhNWml6?=
 =?utf-8?B?YzJJNlRtbmZLQXVLSWJlR3JUbVBZRkoxTkk0Tno1dnB1aE5sQVJNV3BLM0t0?=
 =?utf-8?B?NEhicjVxMzY1WXJQZVRGN0Y1Sm00UVp4VktNT1l6bXBhQ2RjdFAxMDVidHRw?=
 =?utf-8?B?andsOFVIYlBhNHdDNzFOZmJnNys4WmJvYnRBUU91RkZPMUVsbjdQV1Aya0dy?=
 =?utf-8?B?MXdRTjJOcHJGWnViZkhXOVNkc1hVNWlMSW1vYVZDU29tMFRKWVZQY2czUVpE?=
 =?utf-8?B?Kzh3VElMQ2tLWDkvb0wrRk1qc25Oc0tSZmZSQUcvRE1qZnZmN0tuQXJKTE1v?=
 =?utf-8?B?TnVSYnAxdUVFemduQUVUbUt4amV1T1pXN2p2eVZxSVoxM0xvK1h4YU5LSTY4?=
 =?utf-8?B?bjhBZzNCSUlmenhSV0xOVHYwLzFXQkd4eS9lcTJaWnpnZmh6d0Z6Mkxubm0v?=
 =?utf-8?B?UDExY2hQV1hNeXc5WWNjMWhyekZMOHFZSHhmOWNMMCthYXo0OGFRRGhxWmQv?=
 =?utf-8?B?RXpIZ2w4OWcxNEJSeWIxazZwZnM2ZXlFaWVQaXZSbHJSTGEwTitlcHoySzBs?=
 =?utf-8?B?RHRST2Mxb1lLeTJqNW02WVZBYTZ1V0ZkQzZxNyttU2xpSDRrMHhuRGU3Y1VX?=
 =?utf-8?B?R3I1ZWQ0Y3kyL2l2b25VMjVTajFydXBua1M1WmNpS1k1N01aL2JhelA1WndF?=
 =?utf-8?B?YTk5VHZpekVyczJqb1lkajlMdGZiRVVPcFI3TzVQWjlqaFdyYUlybHl6VTBt?=
 =?utf-8?B?czR5cXV4RmRwaVF1ZTA0K1RKV3pIYWJ0OVd4NU8wYmpERVhnMXhsbk5aR1ov?=
 =?utf-8?B?RWV2TWdrK1pYUVVYM01YNnIyVlliemMzbzlQOXpIcmF5UUxOc0hUVmhHUEkz?=
 =?utf-8?B?RXpWOU5HR3FzYkZld3N1QmZQWDh1TUd2elVvZHNTRjJuQW1WVTBIc1ZmUGZF?=
 =?utf-8?B?MFNOZmkydWF0cldaNTh3MDI0MlRQbXU3bmxaZW5maC92MkxOUzM4WmhSNDdR?=
 =?utf-8?B?bjNsaFhBYkhvK2cyalhZUmY5Y1g4MTYyMVp5S2dLWUFLU0xHUDV0NHhyUEp0?=
 =?utf-8?B?SGxzNE0xcW1BQzQrM3kxQ3p1azVjcGtSaW5pNCtqdHlrWFRCVm5oUzAxTkVO?=
 =?utf-8?B?OHVGOU02a0hvc0xnRGUyVWFaTzZSbnF0UkV1bnhJcE53Y0lMaTNjVnVoRGlC?=
 =?utf-8?B?MjBPQmVuWWxEZDNQem5wV1VKWmVYQk5pd1JuY1MvaE1qcGRVT3RDZGxNZTVz?=
 =?utf-8?B?VGNoNHYxSWgwejRDZnYwNUM0dG5hdVZiSHp5ZFpOUFU2aTNhZUZoUytjUHZ1?=
 =?utf-8?B?aS8wM2lSdGp0dmExbHZ3eXE3MlE1bW5EcVljbURUV1VsNWk4b3BFeWtTVFc4?=
 =?utf-8?B?SjRWQkxNSFp5TmJobjk4NW96ZDR4bUdNYlh3M2wzOTFpT29pcjhrZ2pxWTRj?=
 =?utf-8?B?Tk1iRzRmS1dXMjhhUFhFWjdhcCtmR2tHUmcrYnVDOXo0Y04zT1NpekpJL20w?=
 =?utf-8?B?cU9mQTh5OE83S0Vwd0xjK2gwNCt4ak5CTnNOVTB1dGlXdVREWGx2ZGdwd2R3?=
 =?utf-8?B?MEJlRnpOREVUblBXV2NTc1FrcTlFdk9LYi9NYUo0OTBIRzBVaUxoUT09?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4184d6a4-9f98-47fa-7999-08da23a871df
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR12MB5504.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Apr 2022 15:06:00.0013
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qPPoojXrFW3iUDrKLNcZ886p4H+BxV4D2gOKU4aEuf2G9THp9J3CttmTnRLhYgknMOrOug8ubFSWyv3cOCe+0g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR12MB2984


On 4/21/22 07:53, Roopa Prabhu wrote:
>
> Alaa, looks like your test patch also has the same problem
>

To elaborate some more, fib_rule_tests.sh also needs to support -t to 
make the patch useful. something like the below.

I have now added some clarifying notes and also testing notes to the 
networking task board under Task5 for this.


diff --git a/tools/testing/selftests/net/fib_rule_tests.sh 
b/tools/testing/selftests/net/fib_rule_tests.sh
index bbe3b379927a..d0651a413053 100755
--- a/tools/testing/selftests/net/fib_rule_tests.sh
+++ b/tools/testing/selftests/net/fib_rule_tests.sh
@@ -304,6 +304,24 @@ run_fibrule_tests()
         fib_rule6_test
  }

+usage()
+{
+       cat <<EOF
+usage: ${0##*/} OPTS
+
+        -t <test>   Test(s) to run (default: all)
+                    (options: $TESTS)
+EOF
+}
+
+while getopts ":t:h" opt; do
+       case $opt in
+               t) TESTS=$OPTARG;;
+               h) usage; exit 0;;
+               *) usage; exit 1;;
+       esac
+done
+



>
>
> -------- Forwarded Message --------
> Subject: 	Re: [PATCH net-next] selftests: net: vrf_strict_mode_test: 
> add support to select a test to run
> Date: 	Thu, 21 Apr 2022 07:52:45 -0700
> From: 	Roopa Prabhu <roopa@nvidia.com>
> To: 	Jaehee Park <jhpark1013@gmail.com>, outreachy@lists.linux.dev, 
> Julia Denham <jdenham@redhat.com>, Roopa Prabhu 
> <roopa.prabhu@gmail.com>, Stefano Brivio <sbrivio@redhat.com>, 
> netdev@vger.kernel.org
>
>
>
>
> On 4/19/22 21:55, Jaehee Park wrote:
>> Add a boilerplate test loop to run all tests in
>> vrf_strict_mode_test.sh.
>>
>> Signed-off-by: Jaehee Park <jhpark1013@gmail.com>
>> ---
>
> Jaehee, this needs more work. The idea is to be able to run individual 
> tests with -t option.
>
> An example is drop_monitor_tests.sh, see the usage and getopts arg 
> parsing at the beginning of the test
>
> eg ./drop_monitor_tests.sh -t <testname>
>
>
>> .../testing/selftests/net/vrf_strict_mode_test.sh | 14 +++++++++++++-
>> 1 file changed, 13 insertions(+), 1 deletion(-)
>>
>> diff --git a/tools/testing/selftests/net/vrf_strict_mode_test.sh 
>> b/tools/testing/selftests/net/vrf_strict_mode_test.sh
>> index 865d53c1781c..116ca43381b5 100755
>> --- a/tools/testing/selftests/net/vrf_strict_mode_test.sh
>> +++ b/tools/testing/selftests/net/vrf_strict_mode_test.sh
>> @@ -14,6 +14,8 @@ INIT_NETNS_NAME="init"
>> PAUSE_ON_FAIL=${PAUSE_ON_FAIL:=no}
>> +TESTS="vrf_strict_mode_tests_init vrf_strict_mode_tests_testns 
>> vrf_strict_mode_tests_mix"
>> +
>> log_test()
>> {
>> local rc=$1
>> @@ -391,7 +393,17 @@ fi
>> cleanup &> /dev/null
>> setup
>> -vrf_strict_mode_tests
>> +for t in $TESTS
>> +do
>> + case $t in
>> + vrf_strict_mode_tests_init|vrf_strict_mode_init) 
>> vrf_strict_mode_tests_init;;
>> + vrf_strict_mode_tests_testns|vrf_strict_mode_testns) 
>> vrf_strict_mode_tests_testns;;
>> + vrf_strict_mode_tests_mix|vrf_strict_mode_mix) 
>> vrf_strict_mode_tests_mix;;
>> +
>> + help) echo "Test names: $TESTS"; exit 0;;
>> +
>> + esac
>> +done
>> cleanup
>> print_log_test_results
