Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59931D50B
	for <outreachy@lists.linux.dev>; Thu,  9 Mar 2023 16:20:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1678378820; x=1709914820;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=uwId2jbKpj/SVrANbpvZ87ROYOJDquAd7cEPtdoDpr0=;
  b=BZ3sdpxX+i5hUOmcXo37NZ8mskguJnHWoKPWjlvdtADnMpakMz5o+/kZ
   pXzatrtF0Lj+tgY1DoyDYc9D43h8WvaZR531S2GUi03sr4Q+j193xfN+V
   6El/0pFvYYnx7TczOXnVLXIxf6Wt6c7EKcC9riFbgKdx8UXVmC8yiFO16
   2rotPEV/8sj09LwZazCTFyX+O6GyLStXkJJbTCVVdV8bf/RGmv6RUYtTt
   Gf/dROnzh4kM9kkR/KMdadeGuebMKQgcbRyb0x7Qooq2Xj93gr/ivUeRa
   jRL9oetmFlIHmQSRrtRpIUZxKFW6gTsn7mTQAr33QpnxLNshUmEcftfyC
   w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10644"; a="422758409"
X-IronPort-AV: E=Sophos;i="5.98,246,1673942400"; 
   d="scan'208";a="422758409"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Mar 2023 08:20:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10644"; a="670793874"
X-IronPort-AV: E=Sophos;i="5.98,246,1673942400"; 
   d="scan'208";a="670793874"
Received: from djiang5-mobl3.amr.corp.intel.com (HELO [10.209.151.251]) ([10.209.151.251])
  by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Mar 2023 08:20:17 -0800
Message-ID: <55807112-8907-9541-9042-6c508ef11f1e@intel.com>
Date: Thu, 9 Mar 2023 09:20:16 -0700
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.6.0
Subject: Re: Introductory message
Content-Language: en-US
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>,
 Sumitra Sharma <sumitraartsy@gmail.com>
Cc: Julia Lawall <julia.lawall@inria.fr>, Ira Weiny <ira.weiny@intel.com>,
 outreachy@lists.linux.dev
References: <20230308114122.GA312977@ubuntu>
 <12ef38a-fd4c-947c-4ea3-a641ef5b1310@inria.fr>
 <6408c23d58ec5_f3f4a294e1@iweiny-mobl.notmuch> <6882066.18pcnM708K@suse>
From: Dave Jiang <dave.jiang@intel.com>
In-Reply-To: <6882066.18pcnM708K@suse>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit



On 3/8/23 11:40 AM, Fabio M. De Francesco wrote:
> On mercoledì 8 marzo 2023 18:13:33 CET Ira Weiny wrote:
>> Julia Lawall wrote:
>>> On Wed, 8 Mar 2023, Sumitra Sharma wrote:
>>>> Hi I am Sumitra Sharma, an outreachy applicant. This is my first time
>>>> applying to outreachy and linux-kernel. I am currently working on
>>>> setting up the environment. I observed that building the kernel i.e.
>>>> running "make -j2" command itself is taking a lot of time. I would
>>>> appreciate some suggestions on it.
>>>
>>> I think it would take a lot of time...
>>
>> Also:
>>
>> -j is an option which chooses how many threads to build in parallel.
>>
>> If you have enough cores on your machine you could increase '2' to
>> something larger.
>>
> 
> Sumitra,
> 
> That "something larger" can be calculated with a rule of thumb and then
> adapted to your necessities...
> 
> Look at /proc/cpuinfo if you don't know how many cores you have in your
> system...
> 
> # cat /proc/cpuinfo | grep processor
> processor: 0
> processor: 1
> processor: 2
> processor: 3
> processor: 4
> processor: 5
> processor: 6
> processor: 7
> processor: 8
> processor: 9
> processor: 10
> processor: 11
> 
> The output shows that I'm using a 12 core SMT system (https://
> en.wikipedia.org/wiki/Simultaneous_multithreading).
> 
> So "-j12" is my usual choice for building a kernel in the host, minus the
> number of SMT cores reserved for running VMs.

or just run 'make -j`nproc`'. Notice it's not single quote "'" but "`" 
around nproc to execute the command. The return value of nproc is fed to 
make. That what it just picks the max threads on whatever system you are 
on.

> 
> Thanks,
> 
> Fabio
>   
> 
> 
> 
> 
