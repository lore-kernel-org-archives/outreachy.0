X-GM-THRID: 6528703529529376768
X-Received: by 2002:a25:9081:: with SMTP id t1-v6mr4385658ybl.11.1520091980700;
        Sat, 03 Mar 2018 07:46:20 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.13.219.8 with SMTP id d8ls232557ywe.35.gmail; Sat, 03 Mar 2018
 07:46:19 -0800 (PST)
X-Received: by 10.129.136.195 with SMTP id y186mr4453607ywf.76.1520091979525;
        Sat, 03 Mar 2018 07:46:19 -0800 (PST)
Received: by 10.129.73.148 with SMTP id w142msywa;
        Sat, 3 Mar 2018 07:34:33 -0800 (PST)
X-Google-Smtp-Source: AG47ELuJMIobkVTXxmNfXe8PZ08lwAA2Y5Y5P01B0bQayV66m78PclSNJfJG4mnhb2RwlQLn6Oh9
X-Received: by 10.13.234.16 with SMTP id t16mr4437979ywe.8.1520091272689;
        Sat, 03 Mar 2018 07:34:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520091272; cv=none;
        d=google.com; s=arc-20160816;
        b=uhWNQs/xF72YAnOAwpKKB0o1hfZzprgaTwI2DT2GoeIEspkA1nq43LFaVO515O3kJb
         D8wodRiD98c5FNzDIeu4cWDAlsDTCJhETt87L9Xv2QcP1Zj1neTfEM1i3EZm6o15RFKn
         6natmESkJAatrAzJUcx/vvcOci5/fbG4/AHBkPgDxryrwc98MBjun0EXb8/eGfVZ5jC0
         o2Ff9z+vZHla5mI8gf+4akRcXwDDbLIcFqXs+wynWrfe6cRVvznotZk0JasOniXUz6nf
         EwdmoLUq7ZWGZ5wLlYKnKGeWQGNpxoVC0EYvRSuTiP4dNlwPamMnUtlKNtU4ikJqsBsC
         Dyug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :arc-authentication-results;
        bh=u8dsMu0n2k/y7zG1THANrwfLs1Wswypwevzf4Z2GrqA=;
        b=uSVaV4RkkYmTuduiEdsRaBoSzHEM8RKe7M/XE1wwSRHkfjwqoIVbTE3/p4+NOB1Jab
         xndZ8WTHw6HnTpX06TbMxu3EkdhUpC0onHpmNdZlLL81YQGGuvX+oMNHVjZzAYvTv6Ph
         RMv3hrG5HuV/LiN/zXnvivd6Yb0R/usyJuGAj9gkNviVjOJfrFA06xzLGWVVc+0B8Mq3
         BKgO3fk93dv2a8A7WdqdDAIOD11P4f9a15McVg54NNzxxvh+DAiu6HVhSuMIlXyd28E0
         ksyuLvvRBX71ZRLJ4EitGSwSviOe58ISUR9X4uTt59p/+prBHgxjQy4CHzRvtWCJiPDc
         lI/Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of dennis.dalessandro@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=dennis.dalessandro@intel.com
Return-Path: <dennis.dalessandro@intel.com>
Received: from mga12.intel.com (mga12.intel.com. [192.55.52.136])
        by gmr-mx.google.com with ESMTPS id l13si542278ywm.0.2018.03.03.07.34.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 03 Mar 2018 07:34:32 -0800 (PST)
Received-SPF: pass (google.com: domain of dennis.dalessandro@intel.com designates 192.55.52.136 as permitted sender) client-ip=192.55.52.136;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of dennis.dalessandro@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=dennis.dalessandro@intel.com
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
  by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 03 Mar 2018 07:34:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.47,418,1515484800"; 
   d="scan'208";a="21612771"
Received: from ddalessa-mobl2.amr.corp.intel.com (HELO [10.254.131.219]) ([10.254.131.219])
  by fmsmga007.fm.intel.com with ESMTP; 03 Mar 2018 07:34:29 -0800
Subject: Re: [Outreachy kernel] [PATCH] infiniband: hw: Drop unnecessary
 continue
To: Julia Lawall <julia.lawall@lip6.fr>,
 Arushi Singhal <arushisinghal19971997@gmail.com>
Cc: mike.marciniszyn@intel.com, Doug Ledford <dledford@redhat.com>,
 Jason Gunthorpe <jgg@ziepe.ca>, linux-rdma@vger.kernel.org,
 linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
References: <20180303130336.GA8210@seema-Inspiron-15-3567>
 <alpine.DEB.2.20.1803031506550.2302@hadrien>
From: Dennis Dalessandro <dennis.dalessandro@intel.com>
Message-ID: <2032604b-b25b-e5bf-bea5-3c43a50b8ff7@intel.com>
Date: Sat, 3 Mar 2018 10:34:29 -0500
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.20.1803031506550.2302@hadrien>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 3/3/2018 9:07 AM, Julia Lawall wrote:
>> diff --git a/drivers/infiniband/hw/qib/qib_init.c b/drivers/infiniband/hw/qib/qib_init.c
>> index 3990f38..1bd3b32 100644
>> --- a/drivers/infiniband/hw/qib/qib_init.c
>> +++ b/drivers/infiniband/hw/qib/qib_init.c
>> @@ -681,7 +681,6 @@ int qib_init(struct qib_devdata *dd, int reinit)
>>   		if (lastfail) {
>>   			qib_dev_err(dd,
>>   				"failed to allocate kernel ctxt's rcvhdrq and/or egr bufs\n");
>> -			continue;
>>   		}
> 
> Again, the braces should be dropped too.

Thanks Julia, I just noticed the same thing! :)

-Denny

