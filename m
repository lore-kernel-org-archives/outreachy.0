Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C348033C0
	for <outreachy@lists.linux.dev>; Sat, 16 Apr 2022 22:21:38 +0000 (UTC)
Received: by mail-ej1-f53.google.com with SMTP id g18so21028109ejc.10
        for <outreachy@lists.linux.dev>; Sat, 16 Apr 2022 15:21:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=fSXwIlxnuPV8ZBXJbNlgKYURaClKnGpCpDlcnse6PL4=;
        b=VHcZvyD48lPoRVKTt1JiwlP7MSBrXNfQn24d6IE5nO9zsq84MyFH95XiE8p3zJsvZf
         hFGZZHtPbSZ8sY3L16Ote0L4rY0BsCLEuaAcrPqjoMu1v/tAUIfdDYxITrOauAG9iVrt
         9oba7OohyGOGkIOyPdKYFwz4kbjm3tPdqYcmxh82ASh/DIYFxJhbYQ7HROpCo4txAZHd
         4opCBqZcSiqxPnYdIX1802hmVBv0nYwrkwHAO9XeOtMMijHQBb4U6bWx1Spe8P8Qj3/R
         PGsRG5Ds5u6//jeehgdPsYYLexirXcic7/9AxJ2uW25pV9cbjG5DhA2ONN4GWBQyVaQ8
         Z1Rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=fSXwIlxnuPV8ZBXJbNlgKYURaClKnGpCpDlcnse6PL4=;
        b=p4eqqQD8EoPVNpgGEA7N2b/BTary5/U4HQKgEjc9xDLUp4B3SKmFuK4dbz/i1Ufx6z
         hIpeovn/6xwdSkQqKjBfoSDBmzrcDbRNeIQ9XCdhbZCT6DRsiEbmvyPGaIopJ6yUDtJ9
         +m6FTaAQODpNoEPRGp/w8pEXNqXIHkP+qPrrrRs37+xyc0k/HFdkvVoFGLIv15TDiz47
         jdYMwKk9mzG1MgNPv8SNikwc66Q3rCLXpA6wadHp7ABR7XCTZv6Nr3d1bv2PqSDn10lh
         6qTIKikFflxdruDYnoOBPmMwz9CIryR24WJFT7/8X7KG3VCN1IzBP0fNqLGjdUklTtp2
         Mepw==
X-Gm-Message-State: AOAM531AXQ1Lmn7P4KcpdN/W36sfHgCcPEuQpkmzlNNuLdFMYH2v043m
	FpdfvwAafFfXUfavSl9n3JjSe8wN6BM=
X-Google-Smtp-Source: ABdhPJysBaWLTMNfgJbnpLgiJP8sXtRwRu5nh+wvyP2TxCsf/843GFBcTswiGO534lS1KlqEs8ZHOg==
X-Received: by 2002:a17:907:eab:b0:6da:8ec5:d386 with SMTP id ho43-20020a1709070eab00b006da8ec5d386mr4043523ejc.668.1650147696447;
        Sat, 16 Apr 2022 15:21:36 -0700 (PDT)
Received: from leap.localnet (host-79-50-86-254.retail.telecomitalia.it. [79.50.86.254])
        by smtp.gmail.com with ESMTPSA id z1-20020a170906434100b006e7efa329fbsm3057297ejm.109.2022.04.16.15.21.34
        for <outreachy@lists.linux.dev>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 16 Apr 2022 15:21:34 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: outreachy@lists.linux.dev
Subject: Re: [PATCH v3] intel: igb: igb_ethtool.c: Convert kmap() to kmap_local_page()
Date: Sun, 17 Apr 2022 00:21:33 +0200
Message-ID: <2149490.72vocr9iq0@leap>
In-Reply-To: <1897617.PYKUYFuaPT@leap>
References: <20220416111457.5868-1-eng.alaamohamedsoliman.am@gmail.com> <alpine.DEB.2.22.394.2204161608230.3501@hadrien> <1897617.PYKUYFuaPT@leap>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On sabato 16 aprile 2022 17:52:20 CEST Fabio M. De Francesco wrote:
> If all calls should be changed with no regards to the surrounding 
contexts 
> and special situations, we can just make an automated s/kmap()/
> kmap_local_page()/ or something else similar

(I'm afraid that somehow I messed up with the HTML filters in KMail 
therefore I have to send this email again to the Outreachy list because 
this message has already been rejected twice - I hope this time it works). 

Hi Julia, 
  
Of course I was just kidding when talking of massively automated 

substitutions. They are not feasible and we cannot blindly replace all 
kmap() calls with kmap_local_page(). 

Although these code changes look good, your objections are appropriate and 
legitimate. 

Not all kmap() calls can be changed to kmap_local_page() and, if someone 
wants to make such replacements, they should also "prove" somehow that they 
are doing the right changes in that specific context. 

For example, the following is one of those cases where such a replacement 
is not allowed and a different solution has yet to be found: 

https://lore.kernel.org/lkml/2a7030f5-d55f-94c7-90ba-5a57235159f6@amd.com/ 

Furthermore, if people cannot "prove" that this change is feasible, their 
patches will probably be ignored / rejected just because many maintainers 
still don't know if those changes are correct and safe. 

Whoever wants to do these changes should understand the specific context in 
which they are working. 

For example, there have also been cases where alloc_page() + kmap() was 
simply replaced by kmalloc(). Sure! 

If you are interested to see how and why, please take a look at the commit 
633b0616cfe0 ("x86/sgx: Remove unnecessary kmap() from 
sgx_ioc_enclave_init()") from Ira Weiny. 

Regards, 

Fabio



