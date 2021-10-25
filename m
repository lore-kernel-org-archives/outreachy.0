X-GM-THRID: 7018981355604148224
X-Received: by 2002:a05:600c:511c:: with SMTP id o28mr48182055wms.81.1635162272902;
        Mon, 25 Oct 2021 04:44:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:600c:1c9d:: with SMTP id k29ls1020131wms.2.gmail; Mon,
 25 Oct 2021 04:44:31 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJy5ACXct6/TCLFDgLtmrcksF2N/DLSwLl04YGOie8xlF3m+EP6h2cYsQN3KPgdMozhZyu46
X-Received: by 2002:a05:600c:8a4:: with SMTP id l36mr49400298wmp.17.1635162271307;
        Mon, 25 Oct 2021 04:44:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1635162271; cv=none;
        d=google.com; s=arc-20160816;
        b=PK1rsVl3/1x5Gsbxfikp1S8pazfhgwiCoTKpF0XqSbE2TT4j5QxuzbwjGJUrPNmni1
         FSFeoYIpCzqPRwCdIYY/tv10VjFlifgZyx2iJRYbl3BRFjfyyOUPV7KIkEbVCYHaXja9
         zWgh4X8N4e3KR+Jp2iUZpgVRKOcMYFwAAYeb9Nig8kYRtiFvf7FqnJqto7Yv31fyYgFN
         TTY5Uz7YU/iTFUxeMHULq68pokgl8VFKVc/8tWNdv2a5Y+TBUiFyFf0d875VOVOJwP0E
         wIse6ZQ6HDzpiCR8dTvO8llJ5HG+3sEqaBPhdvp3GOE4/tPB3Qpjwxj7gQaIBvg4gjqX
         s24g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:to:from:subject:message-id:dkim-signature;
        bh=8rPO2tOxDIhTybhluxbWUwsTclz14uI7gcfQBprOsrI=;
        b=z7sCgBFt8xan3RyQw2Qb3lmX3IpCz/7ropmOq7njT6S+ytRTXSjzt5aXDcClPcoySv
         zr5FVtZSLwbL/qRi2G1ePjNTOXfdCjhV1aM8MFAEC19nttouenPj0K4pLkJdIClljWjD
         FXASnm2N4T7dSpHd4m3p4buK4l0Up6SEy7N4tlBq01+CNB3WhFf7Thmx55GiB0UzkMWt
         fjPB6XzAlpyh60mn5KKEZKLjmupyj+bJV5kowymP7sBPCrn3rKDGmzcEp5EAh9YjKPbK
         TVG0N/IxnqEgvzb9UKkVFyy6+WILkypcb2jaS5TqvC4U8IrXi062mvOi4EpUh7GCcFXX
         1Pyw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=JX+Lyy0A;
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::431 as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <karolinadrobnik@gmail.com>
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com. [2a00:1450:4864:20::431])
        by gmr-mx.google.com with ESMTPS id o30si274252wms.2.2021.10.25.04.44.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Oct 2021 04:44:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::431 as permitted sender) client-ip=2a00:1450:4864:20::431;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=JX+Lyy0A;
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::431 as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x431.google.com with SMTP id d13so9807812wrf.11
        for <outreachy-kernel@googlegroups.com>; Mon, 25 Oct 2021 04:44:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=8rPO2tOxDIhTybhluxbWUwsTclz14uI7gcfQBprOsrI=;
        b=JX+Lyy0A/gPbZYWiCs0n64N+J2D/CoNEBgGmlYn8tH3Bcg7r+c9zcXyExWm/JCktjT
         BQbyj19O1w4QecMxmLxyxccgoCy2wP1LUCdqPTcikz/vLOR+nPRxmfu1z6/fxYDkE4Tu
         /IYAbNL30Ik3Me5GoPktxMOuD40ABwfVELHAFgHBpE9kWNdrhtRecnApt4/PaA0/U0A8
         AbypQpOZmHXKR5odcOvVXqx1o4xPv1V4qOcOzL26umZL06lLUu+8Pxnm/GvcV/5DIKBg
         6fcn9S9O9izCFysxtNA+QTwWK78jKA94lLrMh0nPDWLG+f2lQQjI+o6cc60UuYLRyAJr
         4ZHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=8rPO2tOxDIhTybhluxbWUwsTclz14uI7gcfQBprOsrI=;
        b=XkiOXXhVTwH3kEOgaurX3PrXMk/ICSFfETFEOfJxbw9kZuHOhKcXBoH0GClXbOM7X/
         zWeRhVro6F1WRWbRhZwci8bjOmmeeubdGgLrPadYkB79GEll3+xk0ZdwrZdh5r0TNsck
         SapASDk80Rv55nDvGx1dYnGHMnDTax58oj0sEmEENiPC2GoGGDUkRmJjP40QpofDIdj5
         CXhNLWohN3lVXU40qjP/Cwzv6M0biO53WdaUvLw8i7uCeLP1deDojaUQRYMQJzeNuM//
         tvbKKuK6XGifPNq04vm1QIlyaeJXYFzEUiHXzlEdknFtV8CtcLQRq2lLmwESPIDnfP6l
         DLLg==
X-Gm-Message-State: AOAM5333kwYFds9JKuGrG268DiMzM84UIOly7g+vBpI+lCXuMWePAY/j
	7cDzkyCz5cN15RdZcbzrtuM=
X-Received: by 2002:a5d:6741:: with SMTP id l1mr22670382wrw.2.1635162270916;
        Mon, 25 Oct 2021 04:44:30 -0700 (PDT)
Return-Path: <karolinadrobnik@gmail.com>
Received: from ?IPv6:2a01:4b00:f411:e700:e085:8cb7:7bf6:5d62? ([2a01:4b00:f411:e700:e085:8cb7:7bf6:5d62])
        by smtp.gmail.com with ESMTPSA id b4sm1956359wri.46.2021.10.25.04.44.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Oct 2021 04:44:29 -0700 (PDT)
Message-ID: <9bb37f004a66b22114572ada1a3d20def81fbcff.camel@gmail.com>
Subject: Re: [Outreachy kernel] Help maintain the First Patch Tutorial
From: Karolina Drobnik <karolinadrobnik@gmail.com>
To: Alison Schofield <alison.schofield@intel.com>, Outreachy Linux Kernel
	 <outreachy-kernel@googlegroups.com>
Date: Mon, 25 Oct 2021 12:44:28 +0100
In-Reply-To: <20211014174207.GA426328@alison-desk>
References: <20211014174207.GA426328@alison-desk>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.38.3-1 
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hi,

I noticed that the information in the "sending patchsets" section is
slightly outdated. I updated the `git format-patch` listing and added
information on how to actually send the patches.

What do you think about this draft?


Thanks,
Karolina

---------------------------------------------------------------------

<<Anchor(git_format_patch_patchset)>>
== Using git format-patch to send patchsets ==

First, use {{{`git log --pretty=oneline --abbrev-commit`}}} to figure
out the first commit ID you want to send. For example, say that my tree
had this git log history:

{{{
b7ca36a Docs: Move ref to Frohwalt Egerer to end of REPORTING-BUGS
bf6adaf Docs: Add a tips section to REPORTING-BUGS.
bc6bed4 Docs: Expectations for bug reporters and maintainers
2c97a63 Docs: Add info on supported kernels to REPORTING-BUGS.
7883a25 Docs: Add "Gather info" section to REPORTING-BUGS.
d60418b Docs: Step-by-step directions for reporting bugs.
3b12c21 Trivial: docs: Remove six-space indentation in REPORTING-BUGS.
bb33db7 Merge branches 'timers-urgent-for-linus', 'irq-urgent-for-
linus' and 'core-urgent-for-linus' of
git://git.kernel.org/pub/scm/linux/kernel/git/tip/tip
41ef2d5 Linux 3.9-rc7
}}}

The first commit I want to send as part of the patchset has commit ID
3b12c21. The last patch I want to send has commit ID b7ca36a. 
So, I want to pass the commit range {{{3b12c21^..b7ca36a}}} to {{{git
format-patch}}}. (Remember, the {{{git format-patch}}} range starting
commit must be the commit ''before'' the first commit you want to send,
so we use the '^' to specify the patch before commit 3b12c21). The
command will look something like this:

{{{
git format-patch -o /tmp/ --cover-letter -n --thread=shallow
3b12c21^..b7ca36a
}}}

Again, the -o flag specifies where to put the email files. The -n flag
says to add numbering to each patch (e.g. [PATCH 2/5]). The `--
thread=shallow` flag specifies that all patches will be In-Reply-To
your cover letter.

That will output files into /tmp:
{{{
/tmp/0000-cover-letter.patch
/tmp/0001-Trivial-docs-Remove-six-space-indentation-in-REPORTI.patch
/tmp/0002-Docs-Step-by-step-directions-for-reporting-bugs.patch
/tmp/0003-Docs-Add-Gather-info-section-to-REPORTING-BUGS.patch
/tmp/0004-Docs-Add-info-on-supported-kernels-to-REPORTING-BUGS.patch
/tmp/0005-Docs-Expectations-for-bug-reporters-and-maintainers.patch
/tmp/0006-Docs-Add-a-tips-section-to-REPORTING-BUGS.patch
/tmp/0007-Docs-Move-ref-to-Frohwalt-Egerer-to-end-of-REPORTING.patch
}}}

To send them as a patchset, you need to provide a path that matches all
of these files. In this case, the `git send-email` command would look
like this:

{{{
git send-email --to <outreachy mailing list if required> --cc
<addresses from get_maintainer.pl output> /tmp/*
}}}

If you would like to test your patchset emails before sending them, you
can add `--dry-run` option that will execute the command without
sending the actual emails.



