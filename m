X-GM-THRID: 6397271096211537920
X-Received: by 10.237.59.39 with SMTP id p36mr6115454qte.34.1489494047285;
        Tue, 14 Mar 2017 05:20:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.54.4 with SMTP id w4ls5009392otb.8.gmail; Tue, 14 Mar 2017
 05:20:46 -0700 (PDT)
X-Received: by 10.157.14.74 with SMTP id n10mr16573469otd.34.1489494046944;
        Tue, 14 Mar 2017 05:20:46 -0700 (PDT)
Received: by 10.202.96.85 with SMTP id u82msoib;
        Tue, 14 Mar 2017 04:22:18 -0700 (PDT)
X-Received: by 10.13.221.140 with SMTP id g134mr20439984ywe.55.1489490538348;
        Tue, 14 Mar 2017 04:22:18 -0700 (PDT)
Return-Path: <jani.nikula@intel.com>
Received: from mga09.intel.com (mga09.intel.com. [134.134.136.24])
        by gmr-mx.google.com with ESMTPS id r66si3590999pfb.7.2017.03.14.04.22.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 14 Mar 2017 04:22:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of jani.nikula@intel.com designates 134.134.136.24 as permitted sender) client-ip=134.134.136.24;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@intel.com;
       spf=pass (google.com: domain of jani.nikula@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=jani.nikula@intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=intel;
  t=1489490538; x=1521026538;
  h=from:to:cc:subject:in-reply-to:references:date:
   message-id:mime-version;
  bh=UVnW5QgSy8wN3QXTUo8E1ub2aHs0JCTnpfqSJ+3YM7o=;
  b=oS1K+GAkHWO3BgnqmJnRP0XWEjL1rRHcoeSm/pEZAfvvVRVCPYhzFCwX
   LdblmZFYOdS7kYAZzOgfXT32C3J6EA==;
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 14 Mar 2017 04:22:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.36,163,1486454400"; 
   d="scan'208";a="834400441"
Received: from jnikula-mobl.fi.intel.com (HELO localhost) ([10.237.72.162])
  by FMSMGA003.fm.intel.com with ESMTP; 14 Mar 2017 04:22:14 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Julia Lawall <julia.lawall@lip6.fr>, Tamara Diaconita <diaconitatamara@gmail.com>
Cc: linux-doc@vger.kernel.org, corbet@lwn.net, outreachy-kernel@googlegroups.com, Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Documentation: x86: Fix typos
In-Reply-To: <alpine.DEB.2.20.1703141001590.3638@hadrien>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20170314083902.4491-1-diaconita.tamara@gmail.com> <alpine.DEB.2.20.1703141001590.3638@hadrien>
Date: Tue, 14 Mar 2017 13:22:14 +0200
Message-ID: <877f3sdrx5.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain

On Tue, 14 Mar 2017, Julia Lawall <julia.lawall@lip6.fr> wrote:
> On Tue, 14 Mar 2017, Tamara Diaconita wrote:
>
>> Fix typos in x86 directory.
>> Make documentation clear and grammatically correct.
>>
>> Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
>> ---
>>  Documentation/x86/boot.txt | 4 ++--
>>  1 file changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/Documentation/x86/boot.txt b/Documentation/x86/boot.txt
>> index 5e9b826..694979a 100644
>> --- a/Documentation/x86/boot.txt
>> +++ b/Documentation/x86/boot.txt
>> @@ -336,7 +336,7 @@ Type:		read
>>  Offset/size:	0x20e/2
>>  Protocol:	2.00+
>>
>> -  If set to a nonzero value, contains a pointer to a NUL-terminated
>> +  If set to a nonzero value, contains a pointer to a NULL-terminated
>>    human-readable kernel version number string, less 0x200.  This can
>>    be used to display the kernel version to the user.  This value
>>    should be less than (0x200*setup_sects).
>> @@ -1105,7 +1105,7 @@ address of the struct boot_params.
>>
>>  **** EFI HANDOVER PROTOCOL
>>
>> -This protocol allows boot loaders to defer initialisation to the EFI
>> +This protocol allows boot loaders to defer initialization to the EFI
>
> This is an American vs British English issue.  I don't know if the Linux
> kernel prefers one or the other.

We prefer they are best left as they are!

http://marc.info/?i=20170313082328.06d0ccbf@lwn.net

BR,
Jani.


>
> julia
>
>>  boot stub. The boot loader is required to load the kernel/initrd(s)
>>  from the boot media and jump to the EFI handover protocol entry point
>>  which is hdr->handover_offset bytes from the beginning of
>> --
>> 2.9.3
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170314083902.4491-1-diaconita.tamara%40gmail.com.
>> For more options, visit https://groups.google.com/d/optout.
>>
> --
> To unsubscribe from this list: send the line "unsubscribe linux-doc" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html

-- 
Jani Nikula, Intel Open Source Technology Center

