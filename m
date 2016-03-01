X-GM-THRID: 6254945718130180096
X-Received: by 10.140.40.239 with SMTP id x102mr33314597qgx.23.1456825238530;
        Tue, 01 Mar 2016 01:40:38 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.91.23 with SMTP id y23ls3596153qgd.35.gmail; Tue, 01 Mar
 2016 01:40:37 -0800 (PST)
X-Received: by 10.13.232.195 with SMTP id r186mr16031663ywe.30.1456825237685;
        Tue, 01 Mar 2016 01:40:37 -0800 (PST)
Return-Path: <daniel.baluta@intel.com>
Received: from mga03.intel.com (mga03.intel.com. [134.134.136.65])
        by gmr-mx.google.com with ESMTP id yd9si4184770pab.1.2016.03.01.01.40.37
        for <outreachy-kernel@googlegroups.com>;
        Tue, 01 Mar 2016 01:40:37 -0800 (PST)
Received-SPF: pass (google.com: domain of daniel.baluta@intel.com designates 134.134.136.65 as permitted sender) client-ip=134.134.136.65;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of daniel.baluta@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=daniel.baluta@intel.com
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by orsmga103.jf.intel.com with ESMTP; 01 Mar 2016 01:40:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.22,522,1449561600"; 
   d="scan'208";a="57473065"
Received: from dbaluta.rb.intel.com (HELO [10.237.104.86]) ([10.237.104.86])
  by fmsmga004.fm.intel.com with ESMTP; 01 Mar 2016 01:40:34 -0800
Subject: Re: IIO Coding Task 2 ?
To: Alison Schofield <amsfield22@gmail.com>
References: <20160224194352.GA3122@d830.WORKGROUP>
 <56CEB5B4.5060605@intel.com> <56CEC19C.1010300@intel.com>
 <20160225182612.GA2359@d830.WORKGROUP> <20160301034750.GA2401@d830.WORKGROUP>
Cc: outreachy-kernel@googlegroups.com
From: Daniel Baluta <daniel.baluta@intel.com>
Message-ID: <56D56438.8000607@intel.com>
Date: Tue, 1 Mar 2016 11:43:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.5.1
MIME-Version: 1.0
In-Reply-To: <20160301034750.GA2401@d830.WORKGROUP>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit



On 01.03.2016 05:47, Alison Schofield wrote:
> .........................snip...................
>> t > >We will make this in two steps:
>>>> * introduce API
>>>> * find a place where locking is not done
>>>> * use new API
>>>>
>>>> After IIO maintainer says this is OK:
>>>> * update all places with the new API.
>>>>
>>>> thanks,
>>>> Daniel.
>> Thanks for the directon.  I am working on that first step.
>> alisons
> Hi Daniel,
> I'm ready to send out the RFC PATCH, but I wasn't able to meet
> one of your requests.  I did not find a place where the locking
> was not done. The 'sample' is one where mlock was used with
> iio_buffer_enabled. I think it illustrates the API well because
> it clearly shows the before/after that would occur in other drivers.
> Send it?
> Thanks,
> alisons
>
Yes please :). Send the patches as RFC's, don't forget to Cc linux-iio 
mailing list.
Also, you can expand your searches to drivers/iio/.

thanks,
Daniel.


