X-GM-THRID: 160604094464
X-Received: by 10.236.2.227 with SMTP id 63mr26610448yhf.12.1424202073859;
        Tue, 17 Feb 2015 11:41:13 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.8.98 with SMTP id q2ls628100iga.33.gmail; Tue, 17 Feb 2015
 11:41:13 -0800 (PST)
X-Received: by 10.70.32.129 with SMTP id j1mr15611097pdi.8.1424202073654;
        Tue, 17 Feb 2015 11:41:13 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from mail-qc0-x22d.google.com (mail-qc0-x22d.google.com. [2607:f8b0:400d:c01::22d])
        by gmr-mx.google.com with ESMTPS id e5si1265350qcg.1.2015.02.17.11.41.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Feb 2015 11:41:13 -0800 (PST)
Received-SPF: pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c01::22d as permitted sender) client-ip=2607:f8b0:400d:c01::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c01::22d as permitted sender) smtp.mail=jes.sorensen@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qc0-x22d.google.com with SMTP id w7so30336695qcr.4
        for <outreachy-kernel@googlegroups.com>; Tue, 17 Feb 2015 11:41:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:message-id:date:user-agent:mime-version:to:cc:subject
         :references:in-reply-to:content-type:content-transfer-encoding;
        bh=9J3YQOe7UiMhBi5xYYs9XVKKxTdaacRuL62qTmb7fTQ=;
        b=dT1a5mXU5BbHuripGeah+EV/saPTEqsuL/Uh+xj3C43Q/c9zJH67Gh4WQWhjinMFT2
         6qzBCjZo0i2K1+mM66B5yhULagOaKo0M+0JlaZCNl1bTPa+Gv5EYnnwqcWj6eASTh+iz
         e/vKHW7OVd+n/UgDpnZGpL9K5LUm0QBEZ2zVezE++2FERhNM2FBnAXEBQ9n2oDE6QNia
         6rxvDX+62jgIwxHteAD1y7jKuqb1gOWesO0M4oPUJbAgClu2iTN763uiX9vkPSIx5PgA
         atVRkG5IjbTg9dY9Frhw5vS6hGRLknDZZJziX4tcYsIcgb9JZLaSajMFeYLC1l+cAa36
         W/2A==
X-Received: by 10.140.90.81 with SMTP id w75mr465097qgd.57.1424202073487;
        Tue, 17 Feb 2015 11:41:13 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from [10.15.49.233] (nat-pool-rdu-t.redhat.com. [66.187.233.202])
        by mx.google.com with ESMTPSA id z67sm16436939qgz.10.2015.02.17.11.41.12
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Feb 2015 11:41:12 -0800 (PST)
From: Jes Sorensen <jes.sorensen@gmail.com>
X-Google-Original-From: Jes Sorensen <Jes.Sorensen@gmail.com>
Message-ID: <54E39957.5020106@gmail.com>
Date: Tue, 17 Feb 2015 14:41:11 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: Arnd Bergmann <arnd@arndb.de>, outreachy-kernel@googlegroups.com
CC: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: fbtft: fix spacing errors
References: <20150217174851.GA7053@localhost.localdomain> <54E393A7.3030402@gmail.com> <29889867.SyN9ErTGdA@wuerfel>
In-Reply-To: <29889867.SyN9ErTGdA@wuerfel>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

On 02/17/15 14:22, Arnd Bergmann wrote:
> On Tuesday 17 February 2015 14:16:55 Jes Sorensen wrote:
>> On 02/17/15 12:48, Aya Mahfouz wrote:
>>> This patch fixes the following checkpatch.pl errors for
>>> the file fb_bd663474.c:
>>>
>>> ERROR: space prohibited before that close parenthesis ')'
>>> ERROR: space prohibited after that open parenthesis '('
>>> ERROR: space required after that ','
>>>
>>> Signed-off-by: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
>>> ---
>>> v1: I know that typically one patch should fix one type of
>>> checkpatch.pl error/warning but given that they are all 
>>> spacing issues, I merged them into one patch.
>>>
>>>  drivers/staging/fbtft/fb_bd663474.c | 100 ++++++++++++++++++------------------
>>>  1 file changed, 50 insertions(+), 50 deletions(-)
>>
>> The patch looks good - your reasoning for merging the patch is sound too
>> since you would otherwise have to modify the same lines 2-3 times.
>>
>> The only issue is that you shouldn't put comments below the
>> signed-off-by line. The comment you added about merging the 3 rounds of
>> changes into one is valid, but I would do that in a cover letter, if you
>> don't feel that is relevant to go into the commit message.
>> Using '--cover-letter' with git format-patch will generate that for you.
> 
> I usually recommend doing it exactly the way that Aya does here
> when there is only one email, but use a cover letter only when
> there are multiple patches in a series to which that comment applies.

I guess this is a question of taste then. I much prefer the cover letter
as it's easier to notice and read, so I always recommend that.

A good example of the rules of Linux aren't always crystal clear :)

Jes


