X-GM-THRID: 6336586801480728576
X-Received: by 10.13.245.68 with SMTP id e65mr672845ywf.118.1476175317981;
        Tue, 11 Oct 2016 01:41:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.35.106 with SMTP id k39ls951720otd.3.gmail; Tue, 11 Oct
 2016 01:41:57 -0700 (PDT)
X-Received: by 10.237.37.113 with SMTP id w46mr690982qtc.4.1476175317646;
        Tue, 11 Oct 2016 01:41:57 -0700 (PDT)
Return-Path: <daniel.baluta@intel.com>
Received: from mga06.intel.com (mga06.intel.com. [134.134.136.31])
        by gmr-mx.google.com with ESMTPS id a143si350618pfa.2.2016.10.11.01.41.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 11 Oct 2016 01:41:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel.baluta@intel.com designates 134.134.136.31 as permitted sender) client-ip=134.134.136.31;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of daniel.baluta@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=daniel.baluta@intel.com
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by orsmga104.jf.intel.com with ESMTP; 11 Oct 2016 01:41:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,476,1473145200"; 
   d="scan'208";a="18406337"
Received: from dbaluta.rb.intel.com (HELO [10.237.104.153]) ([10.237.104.153])
  by orsmga005.jf.intel.com with ESMTP; 11 Oct 2016 01:41:56 -0700
Subject: Re: [Outreachy kernel] IIO Experiment #1 Build Dummy Help
To: Elizabeth Ferdman <gnudevliz@gmail.com>,
 Alison Schofield <amsfield22@gmail.com>
References: <20161001195259.GB12284@d830.WORKGROUP>
 <20161009231959.GA5324@localhost>
Cc: outreachy-kernel@googlegroups.com
From: Daniel Baluta <daniel.baluta@intel.com>
Message-ID: <4fdf08c2-821a-a6e4-a9be-c2d7e528f2e4@intel.com>
Date: Tue, 11 Oct 2016 11:44:04 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <20161009231959.GA5324@localhost>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit



On 10.10.2016 02:19, Elizabeth Ferdman wrote:
> On Sat, Oct 01, 2016 at 12:52:59PM -0700, Alison Schofield wrote:
>> If you have questions about building the modules in IIO Experimenting
>> Task #1, please post here.
>>
>> If you can help those who are having troubles, please post that here
>> also.
>>
> I'm getting errors after running
> $ make drivers/iio/dummy/iio_dummy_evgen.ko
>
> Output:
> ------------------------------------------------------------
> CHK     include/config/kernel.release
> CHK     include/generated/uapi/linux/version.h
> CHK     include/generated/utsrelease.h
> CHK     include/generated/bounds.h
> CHK     include/generated/timeconst.h
> CHK     include/generated/asm-offsets.h
> CALL    scripts/checksyscalls.sh
> MODPOST 3015 modules
>
> WARNING: could not open
> drivers/staging/lustre/lustre/llite/llite_close.c:
> No such file or directory
>
> WARNING: could not open
> drivers/staging/lustre/lustre/obdclass/linux/linux-obdo.c:
> No such file or directory
>
> ERROR: "ftrace_graph_ret_addr" [arch/x86/oprofile/oprofile.ko]
> undefined!
>
> scripts/Makefile.modpost:91: recipe for target '__modpost' failed
> make[1]: *** [__modpost] Error 1
> Makefile:1643: recipe for target
> 'drivers/iio/dummy/iio_dummy_evgen.ko' failed
> make: *** [drivers/iio/dummy/iio_dummy_evgen.ko] Error 2
> ----------------------------------------------------------------
>
> I have already enabled the 4 necessary config options in menuconfig.
> Any ideas?
> thanks,
> liz
>
>


Hi Liz,

Sorry for the late reply. Could you try to update your tree? It seems
that was a problem similar with this few days ago.

http://www.gossamer-threads.com/lists/linux/kernel/2538847?do=post_view_threaded#2538847

Daniel.

