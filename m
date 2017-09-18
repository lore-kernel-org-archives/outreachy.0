X-GM-THRID: 6465542343215808512
X-Received: by 10.98.102.148 with SMTP id s20mr18277768pfj.28.1505729359712;
        Mon, 18 Sep 2017 03:09:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.83.2 with SMTP id h2ls4650049iob.19.gmail; Mon, 18 Sep
 2017 03:09:18 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QAJ+ezIsDCp7vYWSkWhX1MrDHGIthos/QPZVJa8iV3JM2xSOIbFnJPCJ5R1E+rKL5pqYxav
X-Received: by 10.31.140.11 with SMTP id o11mr7850956vkd.31.1505729358872;
        Mon, 18 Sep 2017 03:09:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505729358; cv=none;
        d=google.com; s=arc-20160816;
        b=xbJE/FK3gfw+RxNQdfhzPFq8s2qtpMCsZTcKSM61iAPaNtJIjgmrqNfJvnJy86REM8
         0M8p/GT9vqUgcte2/U/gSp0eMUPTbWsYUCoQadIw67Jqr33Llw+VqlMZ7wrlATWLcyOn
         2RHwxGLjr42AZA9cdN7tIywiCcXGvcIZxGgk8V1RTavPvYpITMzm+MCG4XITnWn4mEvw
         +kvBcByyBht2JZv15EZ8FZS18KVKTvQw5Cr2BfFwVQCrc84pT2H/SiJYX+AgCRqlm1Nj
         Pf+47IiqPOd/r33M1locHYPpriBASg42MfTsdgrP22Y2kMmABHGocLBQhd9cOWN/acSc
         Cu9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:arc-authentication-results;
        bh=mUiA4yUhc2fsefMk8A+MqrPYik5fFMt1UqXhAIMcqQ0=;
        b=N9o3FcCk8DscsItytD4DOJBQgAeTNVmZC3yk7rrd0YuAmK2DaPinDsln66GwVsEeu4
         RCbUan95OsiZ/kSvGUjGeP2SIJ9Yk8x9GXdSKwVSP/5hXd2Dh0QLPFtR714Sw/dBHGWV
         I9PKirXsJJ1kwQPqYsXT9m7HZnaBTwo8zSup+poIIxASP5EN4rEeL6zOVdnsOCbYLiZl
         AfU9jCdSZ/LRiWatKPRSUwYBifRPXW1OUxXKQiUQYFtzCRRyeCi/RijQy9NBYxVx3o+l
         k3ZMF+ZL4sxI7tGGlGM0pz2Ee14UmB40PylLdUOK6eSAKcrkzuaX0p2/tbsF+giWZX+x
         y3aw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of jani.nikula@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=jani.nikula@intel.com
Return-Path: <jani.nikula@intel.com>
Received: from mga07.intel.com (mga07.intel.com. [134.134.136.100])
        by gmr-mx.google.com with ESMTPS id t77si660353pfi.13.2017.09.18.03.09.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 Sep 2017 03:09:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of jani.nikula@intel.com designates 134.134.136.100 as permitted sender) client-ip=134.134.136.100;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of jani.nikula@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=jani.nikula@intel.com
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by orsmga105.jf.intel.com with ESMTP; 18 Sep 2017 03:09:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.42,412,1500966000"; 
   d="scan'208";a="901282651"
Received: from jnikula-mobl2.fi.intel.com (HELO localhost) ([10.237.72.62])
  by FMSMGA003.fm.intel.com with ESMTP; 18 Sep 2017 03:09:16 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Greg KH <greg@kroah.com>, Meghana Madhyastha <meghana.madhyastha@gmail.com>
Cc: outreachy-kernel@googlegroups.com, dri-devel@lists.freedesktop.org
Subject: Re: [Outreachy kernel] [PATCH v3 0/4] drm/agpsupport: Code cleanup
In-Reply-To: <20170918093156.GA9461@kroah.com>
References: <cover.1505376068.git.meghana.madhyastha@gmail.com> <20170918093156.GA9461@kroah.com>
Date: Mon, 18 Sep 2017 13:08:52 +0300
Message-ID: <87ingg9v4b.fsf@nikula.org>
MIME-Version: 1.0
Content-Type: text/plain

On Mon, 18 Sep 2017, Greg KH <greg@kroah.com> wrote:
> On Thu, Sep 14, 2017 at 01:36:17PM +0530, Meghana Madhyastha wrote:
>> Removes checkpath.pl errors and warnings.
>> 
>> Changes in v3:
>>  -Change commit title prefix from drm to drm/agpsupport
>>  -Split the commit "Move EXPORT_SYMBOL so that it immediately follows its
>>      function" into two commits. Removing the extra blank line is 
>>      now a separate commit.
>>  -Included merging conditionals in "Remove assignment in if condition"
>>      in the commit message
>> 
>> Meghana Madhyastha (4):
>>   drm/agpsupport: Replace "foo * bar" with "foo *bar"
>>   drm/agpsupport: Remove assignment in if condition
>>   drm/agpsupport: Move EXPORT_SYMBOL so that it immediately follows its
>>     function
>>   drm/agpsupport: Remove extra blank line
>
> Note, I can't do anything with patches that are outside of
> drivers/staging/ for outreachy submissions.  Hopefully the drm
> developers are ok with this, it's up to them to accept these...

We'll take care of them.

Thanks,
Jani.

-- 
Jani Nikula, Intel Open Source Technology Center

