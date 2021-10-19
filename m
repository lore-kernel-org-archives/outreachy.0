X-GM-THRID: 7018981355604148224
X-Received: by 2002:a17:907:972a:: with SMTP id jg42mr19520335ejc.75.1634634173931;
        Tue, 19 Oct 2021 02:02:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:907:75f1:: with SMTP id jz17ls8101081ejc.2.gmail; Tue,
 19 Oct 2021 02:02:52 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxAJpU1xvKPpRdLiB4/VkRP1tKd8O60jj5u1r9XKb0Pymer8pvEB8sK8l0dHdHzCEaoBX+t
X-Received: by 2002:a17:906:c9cb:: with SMTP id hk11mr34504675ejb.204.1634634172235;
        Tue, 19 Oct 2021 02:02:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634634172; cv=none;
        d=google.com; s=arc-20160816;
        b=iGdf0q9Qez9iTaqvjzLkSvKvKXrOVqGRXnJ7rl5rMb0N0aCRAYJN195u1NvHhm1wu1
         J7Nkj9veYYZZ78uxfplo1+6Br3ZOEVmrxLsxRZp/hz7ATsIBVnJRyRvhvmTq0yWJDqI0
         Xtq8NAfRIkegrMZjvTty+Xmv1/uTsj6YTR1a05GXK9CkwBI4QURXal/0KVK+SqJ5sKTh
         iVi2t9xjUl15ha8OfmnCL7PJcj53m7ehsK2oWsl5nnoLzDeK7d71ngg3KCOX7RTpGq8n
         ykI3lT6/W5Jl8+C61Hur5nMkAazDH6eenRNF/rHrGdpbHh9WOAfiZuvY1DhyVyxKvgrt
         moRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature;
        bh=RGuD7ZkGdwvT6J7CpFjnGLc8GQW734VZ+WxwTcVUGfc=;
        b=0f0b5IWrdmyVoXgLZ3qkms60qQY8Z8gGxjL+H9JFq4K1RrxUeS+N4R5njMc7YZw18r
         2oUIsbe4VF61LVhMmfd6txzvX16QJxODpugt+pyWzI7tOhHk+JeIepmvbr8TLrpo4o+k
         rB1V7S5bdh2UPgX88FyyLtqz2poZS9sJYyZfKbQIUHLePhmoOPuv0+fdKdAGFGSHW/I/
         EsDtq7ol9vhTjXd4fYdQnLio29JNpmNYvP9n9zy3C3Z0Wud0ecRsUXYGUjjb3WCwgQVs
         DQCdoznHv9R/uf0vbCuhtkCGLCj1zg+EPtprMexbP2mzxscal6/yiHhYX/WDGiCvxoa2
         g4XA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b="TEZ/USjl";
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::42a as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <karolinadrobnik@gmail.com>
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com. [2a00:1450:4864:20::42a])
        by gmr-mx.google.com with ESMTPS id o25si1057299eju.1.2021.10.19.02.02.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Oct 2021 02:02:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::42a as permitted sender) client-ip=2a00:1450:4864:20::42a;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b="TEZ/USjl";
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::42a as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x42a.google.com with SMTP id g25so46276228wrb.2
        for <outreachy-kernel@googlegroups.com>; Tue, 19 Oct 2021 02:02:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=RGuD7ZkGdwvT6J7CpFjnGLc8GQW734VZ+WxwTcVUGfc=;
        b=TEZ/USjl2oU3BOwaaocqD4pC2j7pLoPEDxxgSOI7SSqe06+QTGOfM1t9oX42MowIRq
         RYi/ktc8r5Gw7Rm2Ejqts6bwdDtxNz9wr98PYngg/FmBQwFgAcw2pzLitDDzcu0mwC3c
         8PTZTXRVBsmAYwglzArfR2uHpkdzYkgrY3ABtYG9xYCVC+Msxq45gxWDm9Ci0IQh0L91
         5rYpbFGFL5aiyHdLZ9YHu2ZtFumKbXClkyjVytPjuUVz4Q07SOs85u9iEG1VxGo2CGCJ
         Hm4uAhXt4MGJ2lVUFSh9Rj+TdXOP7LgytTluEBF7uP1g38GN0zLCja2qbUfYUYHdIeVW
         hZeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=RGuD7ZkGdwvT6J7CpFjnGLc8GQW734VZ+WxwTcVUGfc=;
        b=RxhZHQqrvXR1czexKbM0gVMpWJ2p0u2ijXyf6NTuYNwfddZHSAxGxLORrACd2IfGBV
         s3jMzhT/5vS374cY1wV2qxCqdddqw1Xtb56pM7r1hq3uWs7TCPDkL2kJZX3nF0QDWV5o
         lWozs2m2Gg2RdReQOcx8aVwqy7426w3wt2gKg/Y500V2766oq0iirSHCX2MDeupVArAv
         zdL2/G+SCYrzhaNTHnmRGI233I1960Dj1BciJBNrNtD3ugcgsbQO52f0h/PG5dpOKgR6
         mcw4HC4CEOvnuBeleYppia6crmE/vzebF+fELSOmDp96gj9VeCahcrMHllvbLlQpu4oL
         VaPA==
X-Gm-Message-State: AOAM532U0MqrdES5sj++b365xBpIjv2varLtSI6b/pzeiHwGla8b/x4k
	XykB9jFpJ9LerSTLwKoVoIc=
X-Received: by 2002:a5d:64af:: with SMTP id m15mr41554892wrp.117.1634634172018;
        Tue, 19 Oct 2021 02:02:52 -0700 (PDT)
Return-Path: <karolinadrobnik@gmail.com>
Received: from ?IPv6:2a01:4b00:f411:e700:e085:8cb7:7bf6:5d62? ([2a01:4b00:f411:e700:e085:8cb7:7bf6:5d62])
        by smtp.gmail.com with ESMTPSA id z1sm14420846wrt.94.2021.10.19.02.01.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Oct 2021 02:02:16 -0700 (PDT)
Message-ID: <11393669909cdb43a5f0ca99eace0451bca45d30.camel@gmail.com>
Subject: Re: [Outreachy kernel] Help maintain the First Patch Tutorial
From: Karolina Drobnik <karolinadrobnik@gmail.com>
To: Alison Schofield <alison.schofield@intel.com>
Cc: Outreachy Linux Kernel <outreachy-kernel@googlegroups.com>
Date: Tue, 19 Oct 2021 10:01:56 +0100
In-Reply-To: <20211018175420.GA446414@alison-desk>
References: <20211014174207.GA426328@alison-desk>
	 <c924b4477fa4067b040e9a0d72af3d8eeb882a98.camel@gmail.com>
	 <20211018175420.GA446414@alison-desk>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.38.3-1 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

Hi,

Thank you very much for your comments. You can find an updated version
of this section below.


Thanks,
Karolina

------------------------------------------------------------

<<Anchor(submit_a_patch)>>
= Submit a patch =

The first step to sending a patch is to figure out who to send it to.
For this, you need to find the maintainer of the code you're patching,
and Cc the correct mailing list. If you simply send it off to
linux-kernel@vger.kernel.org, it will get ignored. The perl script in
the kernel source directory ``scripts/get_maintainer.pl`` will either
take a git commit or a file, and tell you who to send your patch to:

{{{
$ git show --pretty=oneline --abbrev-commit HEAD
a490e2e84eda staging: vt6655: Rename byPreambleType field
diff --git a/drivers/staging/vt6655/baseband.c
b/drivers/staging/vt6655/baseband.c
index 0bae35af6e0f..5efca92f1f18 100644
--- a/drivers/staging/vt6655/baseband.c
+++ b/drivers/staging/vt6655/baseband.c
@@ -1764,7 +1764,7 @@ void vnt_get_phy_field(struct vnt_private *priv,
u32 frame_length,
        u32 count = 0;
        u32 tmp;
        int ext_bit;
-       u8 preamble_type = priv->byPreambleType;
+       u8 preamble_type = priv->preamble_type;
 
        bit_count = frame_length * 8;
        ext_bit = false;

$ git show HEAD | perl scripts/get_maintainer.pl --separator , --
nokeywords --nogit --nogit-fallback --norolestats
Forest Bond <forest@alittletooquiet.net>,Greg Kroah-Hartman
<gregkh@linuxfoundation.org>,linux-staging@lists.linux.dev,linux-kernel@vger.kernel.org
}}}

To get a list of maintainers for a particular file, use `-f` option:

{{{
$ perl scripts/get_maintainer.pl --separator , --nokeywords --nogit --
nogit-fallback --norolestats -f drivers/staging/vt6655/baseband.c 
Forest Bond <forest@alittletooquiet.net>,Greg Kroah-Hartman
<gregkh@linuxfoundation.org>,linux-staging@lists.linux.dev,linux-kernel@vger.kernel.org
}}}

The many arguments to get_maintainer.pl cause the output to be in the
form of a comma-separated list and cause only the actual maintainers of
the affected files and relevant mailing lists to be included. For
Outreachy patches, remember to include the outreachy mailing list in
your `To:` field as well.

The second step to submitting a patch is to create and send a patch as
an email. You cannot send patches as attachments to the mailing list.
Instead, you will have to craft a special email, and send the patch
inline.

There are two ways to send a patch. Either way is correct, and we
suggest you get comfortable with sending patches both ways. We suggest
sending your first patch to yourself, in order to make sure it works.


