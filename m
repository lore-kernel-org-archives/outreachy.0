X-GM-THRID: 6470705412124442624
X-Received: by 10.99.38.132 with SMTP id m126mr563890pgm.9.1506932018632;
        Mon, 02 Oct 2017 01:13:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.99.49.194 with SMTP id x185ls2816753pgx.23.gmail; Mon, 02 Oct
 2017 01:13:37 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QAjhuxKm06bf/e3bJFfenhbEAHa9/lm5pXGI1r3yiR01R6khnLErBgZzfFOw145oNL65aPw
X-Received: by 10.99.185.8 with SMTP id z8mr288330pge.76.1506932017642;
        Mon, 02 Oct 2017 01:13:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506932017; cv=none;
        d=google.com; s=arc-20160816;
        b=WgBPzBBRkUuA0xes/aUgjOzxwIFXHG2ND/uk1cu9+vPC9dJBZTk719+c62aPem3CFV
         1Xcf1ZBd2SHfrBxWgQr1qLIdUrRv4J1IHctGSExVjfyl5rRLt8RUCxymSZXoxysSSrAS
         d/QeSwz406GQTPXRn8uVZmeMS7yJyPAPF8xCCywGSJuJp0m5vyzSlit5OScfRZ/p4xMF
         Hvz3wxFzOJM93rlt5Z2dXZ8JD4UFF8maxu1xsS7a9a0erMiJ1CuwHNPJncRHWt4DFlv0
         kytOIr4+xJGGm7OTsOy1QTXZ28Y+mOi+TpmFDggP7RUm5Pm03iR9Y2oamvgjPcel8HUs
         isCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:organization:in-reply-to
         :subject:cc:to:from:arc-authentication-results;
        bh=yqabnFksIB6HkpypBf4YlQ0ao8P3ghMTmWN6oJFBDm0=;
        b=z5PWjWpX3ZbB+UfgsfcPoZXuHhIvqAI8tkKI8Tf34QAzpQwZPa89P3Zrr1ETyAbM+x
         e7W0FiYAkO4lyyiGQxARjmjbhVLkVY9ZwCHms5CrP4RbuPhoI48j9HwkeUJzHQLzehPV
         e0iUnQakyv11KmM+tq9pGXspsRTXwk/9ZpIaNfXNXH7V7cx2gGnypUlah31kQ2+lydgL
         5JV/Gyp23+RKxVH5kNzDb5ib7MUfE8WmwoTFtIfoYxQ22ifnPYfWnVy0HS5vWK7fnjnq
         JAhE3WOqFfTOlihPbkl2MpSiwhwe2dFfP+CYuGNNuhMTOdPyWbHhQlrQgQMIc/rbt8zd
         zNNQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of jani.nikula@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=jani.nikula@intel.com
Return-Path: <jani.nikula@intel.com>
Received: from mga03.intel.com (mga03.intel.com. [134.134.136.65])
        by gmr-mx.google.com with ESMTPS id b6si1119102pfm.28.2017.10.02.01.13.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Oct 2017 01:13:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of jani.nikula@intel.com designates 134.134.136.65 as permitted sender) client-ip=134.134.136.65;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of jani.nikula@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=jani.nikula@intel.com
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 02 Oct 2017 01:13:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.42,468,1500966000"; 
   d="scan'208";a="905788406"
Received: from jnikula-mobl2.fi.intel.com (HELO localhost) ([10.237.72.62])
  by FMSMGA003.fm.intel.com with ESMTP; 02 Oct 2017 01:13:34 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Daniel Vetter <daniel@ffwll.ch>, Noralf =?utf-8?Q?Tr=C3=B8nnes?=
 <noralf@tronnes.org>
Cc: Meghana Madhyastha <meghana.madhyastha@gmail.com>, daniel@ffwll.ch, outreachy-kernel@googlegroups.com, dri-devel@lists.freedesktop.org
Subject: Re: [PATCH v3 1/2] drm/tinydrm: Move tinydrm_of_find_backlight into drm_of.c
In-Reply-To: <20171002074718.jinjkmc76igo2lkx@phenom.ffwll.local>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1506589807.git.meghana.madhyastha@gmail.com> <e423bdc15522a0109bb98a479eac70409850c5be.1506589807.git.meghana.madhyastha@gmail.com> <20170928140836.ja5dcovqxsmbdnha@phenom.ffwll.local> <37f72839-d110-da4a-467a-cbae6cc0abc7@tronnes.org> <20170929032231.GB9859@meghana-HP-Pavilion-Notebook> <b87bff83-e9af-e095-2b58-8a0b3fb642e0@tronnes.org> <20170929122025.GA29498@meghana-HP-Pavilion-Notebook> <4b32d910-f0af-e9cb-feb7-4bc4174bc9c3@tronnes.org> <20170929141324.GA30107@meghana-HP-Pavilion-Notebook> <08dd8e6a-3028-098e-e193-9f408c6a9633@tronnes.org> <20171002074718.jinjkmc76igo2lkx@phenom.ffwll.local>
Date: Mon, 02 Oct 2017 11:13:06 +0300
Message-ID: <87y3ou55nx.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain

On Mon, 02 Oct 2017, Daniel Vetter <daniel@ffwll.ch> wrote:
> Also adding Jani, who looked at the backlight Kconfig mess in the past.

I've even sent patches to fix some of the dependency mess, but the
problem is social not technical. The problem is that people think
"select" is more convenient than "depends" because they can just enable
a config that way, while "depends" would require finding and enabling
all the dependencies before the menu option even shows up.

I don't deny, that's annoying. But it's also abuse of select, see
Documentation/kbuild/kconfig-language.txt:

  Note:
	select should be used with care. select will force
	a symbol to a value without visiting the dependencies.
	By abusing select you are able to select a symbol FOO even
	if FOO depends on BAR that is not set.
	In general use select only for non-visible symbols
	(no prompts anywhere) and for symbols with no dependencies.
	That will limit the usefulness but on the other hand avoid
	the illegal configurations all over.

The real fix would be making finding and enabling dependencies
recursively more convenient, but I don't see that happening anytime
soon.

BR,
Jani.


-- 
Jani Nikula, Intel Open Source Technology Center

