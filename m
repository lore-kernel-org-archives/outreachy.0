X-GM-THRID: 6465205340686254080
X-Received: by 10.176.79.31 with SMTP id n31mr10474233uah.111.1505307557714;
        Wed, 13 Sep 2017 05:59:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.25.78 with SMTP id b75ls3086863itb.4.canary-gmail; Wed, 13
 Sep 2017 05:59:16 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QCciWLZIUp4ssWhnFzK6xo6ZPC+1V7V7H+WPWKjCe3TVO9u1W2Y84tnKzDv/7qKBL/5mxnw
X-Received: by 10.107.222.6 with SMTP id v6mr1720790iog.16.1505307556773;
        Wed, 13 Sep 2017 05:59:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505307556; cv=none;
        d=google.com; s=arc-20160816;
        b=yXyDLX1rIchSy9sJHezjqU9pY3lrNPB3tighMoZCORhgnWI8Q7luon7zDVUiXyekLP
         TFwrDVwVvztxHqe09FlRS6dR4JMbYdXNDBWZ1eDk7v+0MmdDEkkrUovG8qX00VBProT3
         LtaOjol7KujcuBmLPvqIW4ZLmQcDdD1On67gnoyXnYij3IGcY9yDm4W9sW/ArtorEbtN
         Da6XQVHk9QK99ZDyNoUzb5vf3VE6bReqm8R63lBCXZ6K1QwadtKIOYwsEIoVkIkPUbDr
         0sTKgomSeyFw0Y7t8/Pf2nyuP+Zw4hLyzCN8LsSJoor9aQgqLhY4aTrODuxEK90U6Viv
         +Z5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:arc-authentication-results;
        bh=QUQYKebGWqBu4XxHkRKg9M2du6hD++u+sq0CzmP13Ps=;
        b=05X+PoN7ZCO8lkTsS9bJRvh3Bb/a/JLiwXvVypGE9xaSAPamVlkvD7+RXwJdmZmSgO
         CWR+p8dvcMcW6sicETqRiLRBWDm5XcRLYO+W91tP/lTlQTY94yYpp4DMMJUkp1uPePQt
         2G508TQdOQkdGU2jV+lPpfg6r7uJQcTjXb3E3R8tgJi+5a/ACuqVsCni/JO9FYmilau4
         GlOQMH8SNHdTDxNrw0oE1FozbXzbRPdHl+Z8yXvyxz3HKCBc2uVw+HqXxLxWkvz36rV/
         0dzRgoptmbMLSYNGJZJI/lPGC3gAcPWxbcQjHcBujWV2fYZ1bl8nJiquFXd8W3rQ4Jyw
         HJwQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of jani.nikula@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=jani.nikula@intel.com
Return-Path: <jani.nikula@intel.com>
Received: from mga11.intel.com (mga11.intel.com. [192.55.52.93])
        by gmr-mx.google.com with ESMTPS id v25si1367761pfg.11.2017.09.13.05.59.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 Sep 2017 05:59:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of jani.nikula@intel.com designates 192.55.52.93 as permitted sender) client-ip=192.55.52.93;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of jani.nikula@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=jani.nikula@intel.com
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 13 Sep 2017 05:59:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.42,387,1500966000"; 
   d="scan'208";a="899847733"
Received: from jnikula-mobl2.fi.intel.com (HELO localhost) ([10.237.72.62])
  by FMSMGA003.fm.intel.com with ESMTP; 13 Sep 2017 05:59:14 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Julia Lawall <julia.lawall@lip6.fr>, Meghana Madhyastha <meghana.madhyastha@gmail.com>
Cc: Daniel Vetter <daniel.vetter@intel.com>, Sean Paul <seanpaul@chromium.org>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 0/3] GPU: DRM: drm_agpsupport.c: Code cleanup
In-Reply-To: <alpine.DEB.2.20.1709131352550.26484@hadrien>
References: <cover.1505296813.git.meghana.madhyastha@gmail.com> <alpine.DEB.2.20.1709131352550.26484@hadrien>
Date: Wed, 13 Sep 2017 15:58:51 +0300
Message-ID: <87wp52iwl0.fsf@nikula.org>
MIME-Version: 1.0
Content-Type: text/plain

On Wed, 13 Sep 2017, Julia Lawall <julia.lawall@lip6.fr> wrote:
> On Wed, 13 Sep 2017, Meghana Madhyastha wrote:
>
>> These patches fix the checkpath warnings and errors
>> in drm_agpsupport.c
>>
>> Meghana Madhyastha (3):
>>   GPU: DRM: Moved EXPORT_SYMBOL so that it immediately followed its
>>     function
>>   GPU: DRM: Replace "foo * bar" with "foo *bar"
>>   GPU: DRM: Remove assignment in if condition
>>
>>  drivers/gpu/drm/drm_agpsupport.c | 41 ++++++++++++++++++++++------------------

Please try 'git log --oneline -- drivers/gpu/drm/drm_agpsupport.c' and
observe the commit subject prefix used. Please try to follow the style
in the area you're changing, not some generic rules.

>>  1 file changed, 23 insertions(+), 18 deletions(-)
>
> Are the DRM people going to pick this up?  Because Greg will not.  If you
> do something that is outside staging at a mentor's suggestion it could be
> good to make explicit that the mentor will make sure that the patch will
> be applied.

I'm not generally fond of pure checkpatch fixes, but patch 3 alone I
want enough to pick them all up. ;)

But please do submit the series to dri-devel@lists.freedesktop.org. As a
matter of policy, we don't apply patches not posted to our subsystem
mailing list.

The scripts/get_maintainer.pl script will help you with the lists, but
do use discretion. The script is sometimes misguided, adding *way* too
many lists and people. Just the main subsystem list and
supporters/maintainers are usually enough.


Thanks,
Jani.


-- 
Jani Nikula, Intel Open Source Technology Center

