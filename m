Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 485B333F4
	for <outreachy@lists.linux.dev>; Fri, 15 Apr 2022 23:15:22 +0000 (UTC)
Received: by mail-ej1-f45.google.com with SMTP id ks6so17565747ejb.1
        for <outreachy@lists.linux.dev>; Fri, 15 Apr 2022 16:15:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=CsbELV4xm8fxfqDhZxZWkBHuRC0Qly1BHM6co8H02Tg=;
        b=pDPohMayyT+OujTNFj35PnsJWNigknGBBACNHwn91hlqy4GWfLJGHkH7PPrKoGB5uA
         HbtOZ7bh2x6nOT8wIreW4N2QFraDuHTkJDHc3ciBNvgvXIFz7KwKpNCnJrLRk12m4HWr
         X8bqYQZARtndU3qLJ4v6bikbVeUS4Av0emKdGqVANrDGoUpCOc1Z95Ya2G5PlZoCaVH3
         3YyHvgXoAWPUxqR/vJ/feq3Bov/Kfi0trgMCxSh1jeE4cXEAOAiI3SU6IEJtyu5GoMNX
         IuzH+oZSwiN+9DtRVmlVMw4SNdRTcsNbJQrz6n56dtzN4aAaACyCZCuXB8EFOEy6GCgR
         RdhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=CsbELV4xm8fxfqDhZxZWkBHuRC0Qly1BHM6co8H02Tg=;
        b=Ts2Bmda6sITmTDHzyF/Bcc83oHZ4d8/OeEP6Vh9Lfz4Z76PoW49XHnHACHafKL9Br7
         wcbH8efXgqwiXIJXEoGCaMP99CeXG+7cnv4zUA8i3n3QbIuTY0CxG7UTQa5wwqZAS5sC
         X7kKtvR7/2C2T8FpXMJoR3gXV7z7m4CxK/Ahf961xuuaohEo+bdwnGI4KGQSuAHv/kTT
         GucUGbxyXNE5eBV4wW3tETT929wXWNQ/tDg4aqTD20GhdHcx4o1PUAre0eVQJXQ1QE1q
         pFtcde3EYdNV4tKDM+Do/Cb1Spuphk05rFGDPBBVk9b2tSUAia7Q6glq1lrryWJdI4Kr
         E8+A==
X-Gm-Message-State: AOAM5321eNFJRuvbOREghjiyKnpFMdY0ux9lIpAXLVEgDqTi5Bngrm9P
	JwTxFhCBKe4IxGAGEYHwxv0=
X-Google-Smtp-Source: ABdhPJxfZHcNmTbORT2VVV8vo0CjMSU8e85QvpK5MKvP7Dh3qcLUH/r4iRWGgCPnnXWsigqbTCxL5w==
X-Received: by 2002:a17:906:b6c7:b0:6db:2e14:875 with SMTP id ec7-20020a170906b6c700b006db2e140875mr889379ejb.737.1650064520481;
        Fri, 15 Apr 2022 16:15:20 -0700 (PDT)
Received: from leap.localnet (host-79-43-11-75.retail.telecomitalia.it. [79.43.11.75])
        by smtp.gmail.com with ESMTPSA id d1-20020a50fe81000000b004197f2ecdc2sm3258733edt.89.2022.04.15.16.15.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Apr 2022 16:15:19 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Jonathan Corbet <corbet@lwn.net>, Andrew Morton <akpm@linux-foundation.org>, SeongJae Park <sj@kernel.org>, Jiajian Ye <yejiajian2018@email.szu.edu.cn>, Thomas Gleixner <tglx@linutronix.de>, Ira Weiny <ira.weiny@intel.com>, Matthew Wilcox <willy@infradead.org>, Peter Zijlstra <peterz@infradead.org>, outreachy@lists.linux.dev
Subject: Re: [PATCH v3 0/2] Documentation/vm: Rework and extend highmem.rst
Date: Sat, 16 Apr 2022 01:15:17 +0200
Message-ID: <2830226.e9J7NaK4W3@leap>
In-Reply-To: <20220415224859.21060-1-fmdefrancesco@gmail.com>
References: <20220415224859.21060-1-fmdefrancesco@gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="ISO-8859-1"

On sabato 16 aprile 2022 00:48:57 CEST Fabio M. De Francesco wrote:
> Extend and rework the "Temporary Virtual Mappings" section of the 
highmem.rst
> documentation.
> 
> Do a partial rework of the paragraph related to kmap() and add a new 
paragraph
> in order to document the set of kmap_local_*() functions. Re-order 
paragraphs
> in decreasing order of preference of usage.
> 
> Include kerneldoc comments from include/linux/highmem.h and remove
> redundant and obsolete section about kmap_atomic().
> 
> v1-v2:
> 	1/2 - According to comments on v1 by Matthew Wilcox and Ira 
Weiny,
> 	      correct a mistake in text, format paragraphs to stay within 
> 	      the 75 characters limit, re-order the flow of the same 
> 	      paragraphs in decreasing order of preference of usage.
> 	2/2 - No patch.
> 
> v2->v3:
> 	1/2 - No changes.
> 	2/2 - Added patch to include kernel-doc to highmem.rst and
> 	      remove the now redundant section about kmap_atomic().
> 
> Fabio M. De Francesco (2):
>   Documentation/vm: Extend "Temporary Virtual Mappings" section in
>     highmem.rst
>   Documentation/vm: Include kernel-doc to highmem.rst
> 
>  Documentation/vm/highmem.rst | 96 +++++++++++++++++++++---------------
>  1 file changed, 56 insertions(+), 40 deletions(-)
> 
> -- 
> 2.34.1

I'm sorry but I need to resend the whole series because for some reasons I 
forgot to CC the relevant lists.

Again, sorry for the noise,

Fabio M. De Francesco


