X-GM-THRID: 7019053574676021248
X-Received: by 2002:ac2:5de2:: with SMTP id z2mr11040181lfq.329.1634300335920;
        Fri, 15 Oct 2021 05:18:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:7f06:: with SMTP id a6ls1604022ljd.9.gmail; Fri, 15 Oct
 2021 05:18:54 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzdwsmRYbkp4HVuHuqfXQohyWAMBqJAVhpBV6aB0FzJEmECe8iCAt0RTSILHpDidMowunLQ
X-Received: by 2002:a2e:a710:: with SMTP id s16mr12290935lje.444.1634300334209;
        Fri, 15 Oct 2021 05:18:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634300334; cv=none;
        d=google.com; s=arc-20160816;
        b=jURuAa6cmLRMgeR/449FrxAoUrMwDo8UopRR7D6ER9h+EtZNVRk1DbHsFVMO5w/HVW
         +v/wHC8nx6/nPNCK0PytbK5GJZqdo/L4YBT/98Sv1TgZwhg4f2PS1jjuzlI7L11A+71p
         ATvDRomQa1ug1iZ1GC7rCGAbnmGghwKdDHeJGf0I1aNisn61WxOH/w1S3VvGPjUtyRGe
         K5ZK7G1jF5iVvgslFFBgOfvdvKffyHUb5HK9IlexN1lG3IX4HVJAHOMDUg9lJLgCg1H1
         v3pwAkttXKWkXkIhXtDaFQs5vQvRIiwkRXxwLcy2pq55rCd+162t+I2FIV2pTpY7KANY
         rVuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=TyCdJC3F3X3v5/10VZtJkvT7tLK2jl1FUHahvTgK0zA=;
        b=wjVC7ilauTrsClrCz/n9O/St3QucHppUTPJR7QWzeasZrX6NX1xhzNnzORhNkPe8xe
         7R3chU48k1jyofN4V9XxiRdMH2hGvZbVfQF4J2gucRUhUsskQwthsc26UieoA4W/ysZa
         /jsb+gvA/t+8G9H6OLjUFxt3DArR1DPg9N3SU5/uir9GSca7OqAvTyrnJ/mdVUusgQMg
         KgoiOMxgrmWjS4+j/DUGAXblAJH/FvBcx8wD06Rh3LL9B/IGzqO1DlYirs3ZHHpGJNU9
         VYLTW2s+beViUrc4DmtHbFAlrbuTaf6ABUyFquTJjRbrl0N/0WnBTrEnXV4nnztn13AD
         nOfA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=eVZD3lle;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::531 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com. [2a00:1450:4864:20::531])
        by gmr-mx.google.com with ESMTPS id z21si265802ljn.1.2021.10.15.05.18.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Oct 2021 05:18:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::531 as permitted sender) client-ip=2a00:1450:4864:20::531;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=eVZD3lle;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::531 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ed1-x531.google.com with SMTP id w14so37080528edv.11
        for <outreachy-kernel@googlegroups.com>; Fri, 15 Oct 2021 05:18:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=TyCdJC3F3X3v5/10VZtJkvT7tLK2jl1FUHahvTgK0zA=;
        b=eVZD3lleqhTqMuA9ixUFWq1zS/rKAlh5PafhzjIsB7RDVQB9gZWlq+lqagVC6J3uO2
         oChNeRWxn7H+HuBRYLFGhxXzPZyRgr2+EQEMQK3tBFxPbXibHsoencWixLSY9neNPVQL
         +DxnRUvSskbnBHjEZeTVtaiXlDh0Dm/5QHL+cBehtwY01WL+LClAYVE8YuD/IMdhi123
         3KAZXY0U49r1CBPC+lbfW45xIgr6sblNxHsFRDpoqfnyYvKzjMbfPOOwh7csJM+i6B1v
         GfmVuIFF9lHsWPC7lJ6nNREjA9L7bmDu1Xpp5VGODXtFDYjasYxQTV8t88Yu6W4YsuBY
         v/hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=TyCdJC3F3X3v5/10VZtJkvT7tLK2jl1FUHahvTgK0zA=;
        b=CUBd2ED5viUxG0DYO4ROqfUP6PPOIJwQhDndrKIluFkCkPYf8a0JMKfBmRmx7UUxiZ
         OqB+LB+2Mn9hkgQoJVmKuj7NXBIF9I0uN/7lDnvnkShqXk5hNcS1ug2s+IU5w8Mp9Wof
         CtDWgfDvdqM6AiDoin7YbnWpSEthhXTt4bzEVf118NQIKSZx2m+4nDnl7S8A6J31Sb2O
         JkRZbnruUDxOwhmyUY5rNyaRZIpPv57zhUNVzXnD6Uv8YlxPz9AEYpe7i7toSXLMzfRI
         2ykmm/8a0BUVR5MxD9Mbz//sC1vVU2KCDXo+NpgvjtBVis72j55sjr8jJ8A6BQymuedD
         i1Nw==
X-Gm-Message-State: AOAM5335P1XTuEDB48gJ1fwtNFPgscAIQUBxOmgQITiYpKkKxFQMxH6T
	jOJ0le8VVOyfWrPQfH02NZ3tY9GIEYE=
X-Received: by 2002:a05:6402:4382:: with SMTP id o2mr16860283edc.271.1634300333740;
        Fri, 15 Oct 2021 05:18:53 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from localhost.localdomain (host-79-47-104-180.retail.telecomitalia.it. [79.47.104.180])
        by smtp.gmail.com with ESMTPSA id h18sm4003996ejt.29.2021.10.15.05.18.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Oct 2021 05:18:52 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: outreachy-kernel@googlegroups.com, Kushal Kothari <kushalkothari285@gmail.com>
Cc: mike.rapoport@gmail.com, mchehab@kernel.org, sakari.ailus@linux.intel.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH] staging : media : atomisp : input_system.c : fixes the error of control reaches end of non-void function [-Werror=return-type]
Date: Fri, 15 Oct 2021 14:18:51 +0200
Message-ID: <2247559.FlfiXgstMM@localhost.localdomain>
In-Reply-To: <2125107.Dqu8hxrGLC@localhost.localdomain>
References: <20211014223007.596789-1-kushalkothari285@gmail.com> <2125107.Dqu8hxrGLC@localhost.localdomain>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="UTF-8"

On Friday, October 15, 2021 2:04:49 PM CEST Fabio M. De Francesco wrote:
> Hi Kushal,
> 
> Aside from what Alison said about not accepting patches in this driver this 
> round, please note that this is not the correct way to address that 
compiler 
> warning.
> 
> Think about it: now, whatever "state" you get from set_source_type(), you 
> always return it to the caller of input_system_configure_channel_sensor().
> 
> By doing so, you change the logic of the function and get dead code. This 
> change makes the rest of the function code unreachable and introduces a 
huge 
> bug.
> 
> While the patch cannot be accepted for Outreachy, think of a better 
solution 
> as you may need to make similar changes in future patches.
> 
> Thanks and welcome,
> 
> Fabio M. De Francesco

I'm sorry, but just now I saw the reply Kieran Bingham. I'm simply restating 
what he wrote, so please disregard my email.

I think that I didn't see his email because you forgot to CC linux-
staging@lists.linux.dev and linux-kernel@vger.kernel.org.

Please read again the Outreachy rules. If I'm not wrong, you should always CC 
the two mailing lists above.

Thanks,

Fabio M. De Francesco



