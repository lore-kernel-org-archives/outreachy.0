X-GM-THRID: 6254945718130180096
X-Received: by 10.13.235.144 with SMTP id u138mr39698080ywe.21.1456390403610;
        Thu, 25 Feb 2016 00:53:23 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.132.23 with SMTP id g23ls330997iod.90.gmail; Thu, 25 Feb
 2016 00:53:23 -0800 (PST)
X-Received: by 10.107.44.67 with SMTP id s64mr1573848ios.29.1456390403125;
        Thu, 25 Feb 2016 00:53:23 -0800 (PST)
Return-Path: <daniel.baluta@intel.com>
Received: from mga03.intel.com (mga03.intel.com. [134.134.136.65])
        by gmr-mx.google.com with ESMTP id u66si1121065pfa.2.2016.02.25.00.53.23
        for <outreachy-kernel@googlegroups.com>;
        Thu, 25 Feb 2016 00:53:23 -0800 (PST)
Received-SPF: pass (google.com: domain of daniel.baluta@intel.com designates 134.134.136.65 as permitted sender) client-ip=134.134.136.65;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of daniel.baluta@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=daniel.baluta@intel.com
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by orsmga103.jf.intel.com with ESMTP; 25 Feb 2016 00:53:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.22,497,1449561600"; 
   d="scan'208,217";a="910904383"
Received: from dbaluta.rb.intel.com (HELO [10.237.104.86]) ([10.237.104.86])
  by fmsmga001.fm.intel.com with ESMTP; 25 Feb 2016 00:53:23 -0800
Subject: Re: IIO Coding Task 2 ?
To: Alison Schofield <amsfield22@gmail.com>
References: <20160224194352.GA3122@d830.WORKGROUP>
 <56CEB5B4.5060605@intel.com>
Cc: outreachy-kernel@googlegroups.com
From: Daniel Baluta <daniel.baluta@intel.com>
Message-ID: <56CEC19C.1010300@intel.com>
Date: Thu, 25 Feb 2016 10:55:56 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.5.1
MIME-Version: 1.0
In-Reply-To: <56CEB5B4.5060605@intel.com>
Content-Type: multipart/alternative;
 boundary="------------060301080706060308070204"

This is a multi-part message in MIME format.
--------------060301080706060308070204
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

<resending answer due to outreachy-kernel delivery failure>

On 25.02.2016 10:05, Daniel Baluta wrote:
>
>
> On 24.02.2016 21:43, Alison Schofield wrote:
>> Daniel,
>>
>> I'm working on IIO coding task #2.
>>
>> In 'auditing IIO device state updates to locking' I believe that
>> in addition to "Updates to state changes must always take mlock",
>> any checks of device state must also take mlock.  And that is,
>> what you are asking us to do in this task.
>> (iio_buffer_enabled is checking device state, not setting)
>>
>> Basically, anywhere iio_dev->currentmode is set|checked use mlock.
>>
>> Right track?
> Correct.
>
>> For this task, I'm not clear on why we are doing RFC.  In practice,
>> mlock is used very consistently for protecting device state.
>> Can you clarify the controversial aspect?
> As agreed on this thread: 
> http://www.spinics.net/lists/linux-iio/msg18540.html
> we will try to propose some API like:
>
> /iio_device_claim_direct_mode //iio_device_release_direct_mode/
>
> which will try to make code easier to read and hide the inner details 
> of taking/releasing mlock.
>
> We will make this in two steps:
>
> * introduce API
> * find a place where locking is not done
> * use new API
>
> After IIO maintainer says this is OK:
> * update all places with the new API.
>
> thanks,
> Daniel.


--------------060301080706060308070204
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    &lt;resending answer due to outreachy-kernel delivery failure&gt;<br>
    <br>
    <div class="moz-cite-prefix">On 25.02.2016 10:05, Daniel Baluta
      wrote:<br>
    </div>
    <blockquote cite="mid:56CEB5B4.5060605@intel.com" type="cite">
      <meta content="text/html; charset=windows-1252"
        http-equiv="Content-Type">
      <br>
      <br>
      <div class="moz-cite-prefix">On 24.02.2016 21:43, Alison Schofield
        wrote:<br>
      </div>
      <blockquote cite="mid:20160224194352.GA3122@d830.WORKGROUP"
        type="cite">
        <pre wrap="">Daniel,

I'm working on IIO coding task #2.

In 'auditing IIO device state updates to locking' I believe that
in addition to "Updates to state changes must always take mlock",
any checks of device state must also take mlock.  And that is,
what you are asking us to do in this task.
(iio_buffer_enabled is checking device state, not setting)

Basically, anywhere iio_dev-&gt;currentmode is set|checked use mlock.

Right track?</pre>
      </blockquote>
      Correct.<br>
      <br>
      <blockquote cite="mid:20160224194352.GA3122@d830.WORKGROUP"
        type="cite">
        <pre wrap="">
For this task, I'm not clear on why we are doing RFC.  In practice, 
mlock is used very consistently for protecting device state.
Can you clarify the controversial aspect?
</pre>
      </blockquote>
      As agreed on this thread: <a moz-do-not-send="true"
        class="moz-txt-link-freetext"
        href="http://www.spinics.net/lists/linux-iio/msg18540.html">http://www.spinics.net/lists/linux-iio/msg18540.html</a><br>
      we will try to propose some API like:<br>
      <br>
      <pre><i>iio_device_claim_direct_mode
</i><i>iio_device_release_direct_mode</i>

</pre>
      which will try to make code easier to read and hide the inner
      details of taking/releasing mlock.<br>
      <br>
      We will make this in two steps:<br>
      <br>
      * introduce API<br>
      * find a place where locking is not done<br>
      * use new API<br>
      <br>
      After IIO maintainer says this is OK:<br>
      * update all places with the new API.<br>
      <br>
      thanks,<br>
      Daniel.<br>
    </blockquote>
    <br>
  </body>
</html>

--------------060301080706060308070204--

