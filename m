Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8E5D1FCD
	for <outreachy@lists.linux.dev>; Thu, 21 Apr 2022 17:51:39 +0000 (UTC)
Received: by mail-wr1-f43.google.com with SMTP id w4so7702130wrg.12
        for <outreachy@lists.linux.dev>; Thu, 21 Apr 2022 10:51:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=7lWJD4Cehmg0sq4G4syNiHxZE4IXa2IBfkB5ulYDQ9g=;
        b=Y/Bfgwcks3FeuHavXLrNU9YgsQnYmdJug3PPRV1aNbqMkqPY/N1XJeqVJ0K1Z6qWXU
         X+ZLl9Kx7FRJ7Ed+BACJeZQAZHurG358B3ap61neI8yCKiGL+5XT+lXKIg4GSYi8f8nx
         JcPYutFKjjZWYSrC0ZPxBSs1wWcw7P5YY0ATa6RX50uIMmI61viWXGfeTT++mc0Vde6e
         grfflOGhjPtQrs1OiDinFtoJOglagYzaNAl1kV+OZri28nNqQKNNfIL4iIVN1w/lcT/0
         fJnkG9RLU1OS7ECJaefX6yMm7XdNXFTtfMCjWmV3dauPdNr6Xm4jBYBHbQ9uoPunCsuC
         w5mQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=7lWJD4Cehmg0sq4G4syNiHxZE4IXa2IBfkB5ulYDQ9g=;
        b=WBdoAZ4m/jegTtZPB+dBAYYZ4zcL8fFtUGOfIuvEPANr8LKXv/PIyUJiUsYInH2ufn
         FBtRgJOxwiznbY6rDxsMX8bvsjfhvA1VFAh+A/yh8NfAF05QwpXPamci76QCTkPezvdd
         5fhZnI/F36QT/TIGQpOyFU6ACQi7svMe9hOEZQGJqOlzF92/NbgYNFqHcmb5ciwybgCf
         a6KtIYPCgpZkAiG884P3ltVPVCWm9wF7u4HVefu8vujnzymCWsL3TH97Ptxe77Bs5I04
         +nzx/T6AwTxmBKooa4mg5TIe1YevXiXCwXjbL0HN07wryabYLdFbfAboqgl5vuI8WP1q
         7BNA==
X-Gm-Message-State: AOAM5323Skg4FGmh5zzSy1SOJ8oiitmMPNMLJutn0yB3yZ2z6l7Fuzvx
	MX04Hqaw4CXF15cjGgpC3K4=
X-Google-Smtp-Source: ABdhPJwvv3EYK2rogJiUsH2tIFVInFv0qLt1cMsaHQcuicUtecwSnDJgWj7vT+U46Dic3Eu6zvR3+g==
X-Received: by 2002:adf:e586:0:b0:20a:c729:dfc6 with SMTP id l6-20020adfe586000000b0020ac729dfc6mr359739wrm.686.1650563498233;
        Thu, 21 Apr 2022 10:51:38 -0700 (PDT)
Received: from leap.localnet (host-79-50-86-254.retail.telecomitalia.it. [79.50.86.254])
        by smtp.gmail.com with ESMTPSA id ay41-20020a05600c1e2900b0038e75fda4edsm2569764wmb.47.2022.04.21.10.51.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Apr 2022 10:51:36 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Jonathan Corbet <corbet@lwn.net>, Andrew Morton <akpm@linux-foundation.org>, SeongJae Park <sj@kernel.org>, Jiajian Ye <yejiajian2018@email.szu.edu.cn>, Thomas Gleixner <tglx@linutronix.de>, Ira Weiny <ira.weiny@intel.com>, Matthew Wilcox <willy@infradead.org>, Peter Zijlstra <peterz@infradead.org>, outreachy@lists.linux.dev, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 0/2] Documentation/vm: Rework and extend highmem.rst
Date: Thu, 21 Apr 2022 19:51:35 +0200
Message-ID: <1938696.zToM8qfIzz@leap>
In-Reply-To: <20220415231917.25962-1-fmdefrancesco@gmail.com>
References: <20220415231917.25962-1-fmdefrancesco@gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On sabato 16 aprile 2022 01:19:15 CEST Fabio M. De Francesco wrote:
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
> 
Dear Maintainers,

Please drop this patch because it has been reworked and inserted as part of 
a new series whose subject is "Extend and reorganize Highmem's 
documentation" and which is about to be submitted.

Thanks,

Fabio M. De Francesco




