Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A41F87E3
	for <outreachy@lists.linux.dev>; Wed, 27 Apr 2022 05:28:18 +0000 (UTC)
Received: by mail-ed1-f50.google.com with SMTP id g20so645193edw.6
        for <outreachy@lists.linux.dev>; Tue, 26 Apr 2022 22:28:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=OmFfBKBvjXjBUi32eJz6KqWWe+VBykXhnFIMt6kZrPA=;
        b=VKF80W9fKkrHobaNWG6+jlexuZpjlYTkta79tRkZgiz1nVADhCqsm6FKiL6csRUdjz
         JSkotuedZJyK80hxkRz9g63COsSodweG1uLO9NBvJlBVZZvkud49fD2IUtgBaESQRGF/
         GW3u6yFsUXuvtNhpA5kIUtMvDEwu5eb4ZWHyqbdAms6KhRq4lfyCL5eFipL/NsHa+W0R
         LWdEwrJwdWLNRRtTAhjzcgtLHa1dShCnCPIWZZUWg7gvzxHMcFALsVjUPFNfd8qoqq0W
         ODeXIzrSIPU55JfZ19Mmx73lEKEs2ui+Fn9JwJ7ME0NrHJbkijJV+4ujLrVLj/HqUMyQ
         MTIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=OmFfBKBvjXjBUi32eJz6KqWWe+VBykXhnFIMt6kZrPA=;
        b=gY2TzDOFn0WTGMunM5mYnk07AbLdCfG2oTe8AoFMTvTy+gSvdx3gD7MC8/nMwVXqZB
         7Va91hvODteJiFGNq3sVAeXs1kmc/TecrmciPYrIzDXhfsE9yqTVkKRbbw3lIdYZHk06
         3YImmfq1+r2wjC/ox/eo2sE4YBrG2SBcqMv9+d7gmmoLHu3PyPtvoRkyW3eqjh938CFn
         +H4IivOKCxEh45zIewREBkKdq85X6oYFF2ix58w4j5Z69nJWvUB2KZINWNzao3bQ15wf
         VuuNuKTGmCbiVR2vy3W5BoLEJRRtwZcRDT2jlq1YZX9z3sy9aVW/AJeG0NZ90QX4/gJk
         zemw==
X-Gm-Message-State: AOAM530HRYWPmDvSH8ythhrDl4SJm0+z97mkOMvIbgKdZCMmW0W+Nsno
	1ggmXekfaZGZY3zBWnMf+ok=
X-Google-Smtp-Source: ABdhPJxlWhm6y16PcnsGfzyfaskCHjeUFOul0gTxv+QCvWXYqmPxQGE4L6lNMH+wgHmtutAMMai44g==
X-Received: by 2002:aa7:de93:0:b0:418:d700:662a with SMTP id j19-20020aa7de93000000b00418d700662amr28175416edv.107.1651037296832;
        Tue, 26 Apr 2022 22:28:16 -0700 (PDT)
Received: from leap.localnet (host-79-50-86-254.retail.telecomitalia.it. [79.50.86.254])
        by smtp.gmail.com with ESMTPSA id n13-20020a170906724d00b006cedd6d7e24sm6037171ejk.119.2022.04.26.22.28.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Apr 2022 22:28:15 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Cc: Ira Weiny <ira.weiny@intel.com>, Andrew Morton <akpm@linux-foundation.org>, Catalin Marinas <catalin.marinas@arm.com>, "Matthew Wilcox (Oracle)" <willy@infradead.org>, Will Deacon <will@kernel.org>, Peter Collingbourne <pcc@google.com>, Vlastimil Babka <vbabka@suse.cz>, linux-kernel@vger.kernel.org, Jonathan Corbet <corbet@lwn.net>, linux-doc@vger.kernel.org, outreachy@lists.linux.dev, "Acked-by : Mike Rapoport" <rppt@linux.ibm.com>
Subject: Re: [PATCH v2 1/4] mm/highmem: Fix kernel-doc warnings in highmem*.h
Date: Wed, 27 Apr 2022 07:28:13 +0200
Message-ID: <2383038.jE0xQCEvom@leap>
In-Reply-To: <YmfRynAhuSWz9H+e@linutronix.de>
References: <20220425162400.11334-1-fmdefrancesco@gmail.com> <4396926.LvFx2qVVIh@leap> <YmfRynAhuSWz9H+e@linutronix.de>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

On marted=C3=AC 26 aprile 2022 13:04:42 CEST Sebastian Andrzej Siewior wrot=
e:
> On 2022-04-26 11:43:03 [+0200], Fabio M. De Francesco wrote:
>=20
> Either way, according to the code kmap_atomic() does not always disable
> preemption=20

Hi Sebastian,

In my last email (for patch 4/4) I wrote that I would add a deprecation=20
notice to kunmap_local() and would talk about thread locality in=20
kmap_local_page(). I want to confirm that I'll do these changes in v3.

Then I closed that email asking if I was still overlooking something.=20
Consider that I'm relatively new to kernel development and that it's just=20
something I do in my spare time. So I was pretty sure I was still missing=20
something :)

After reading again the code of kmap_atomic() (as you suggested - thanks!)=
=20
I noted that you correctly say that kmap_atomic() does not always disables=
=20
preemption (i.e., preemption is disabled only for !PREEMPT_RT kernel's =20
configurations).

Therefore I'll also change the first sentence of kunmap_local() to the=20
following:

"[It] Unmaps an address previously mapped by kmap_atomic() and re-enables=20
pagefaults and preemption (the latter disabled only for !PREEMP_RT=20
configurations).".

I will also be making this change in v3.

Can you please say if I'm still missing something?

Thanks,

=46abio



