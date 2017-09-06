X-GM-THRID: 6462772146556895232
X-Received: by 10.101.82.77 with SMTP id q13mr324548pgp.134.1504731601789;
        Wed, 06 Sep 2017 14:00:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.141.80 with SMTP id p77ls26973iod.40.gmail; Wed, 06 Sep
 2017 14:00:00 -0700 (PDT)
X-Received: by 10.36.74.146 with SMTP id k140mr743125itb.46.1504731600958;
        Wed, 06 Sep 2017 14:00:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1504731600; cv=none;
        d=google.com; s=arc-20160816;
        b=XBw8GvfwHGJ89p/hUyfkMUObXLN2vS5N2Pq8Lq90gkeWi25oH6dgEdoVATkhalRVij
         BKsmrhZSnA9x3er8zqgRNKPMTMqUA/3lYpxZDtrq1UjHNB3Y6cMtgKHVbhxQHzbMz8SA
         sPwdiclzQn0bqzR6dgLrQc0nbdDKVb8RRSx7+KSJRBWC/tEYYYWSeYsX8D+DiPQfwMkc
         gru6RTNOIgSpCUls9A8ifEZWvh7OdDpEWg/0Wmj5kly2IBB9FRR81IMioMJK1NrH+8oP
         vcIgVQRP8RKHXne9FhQiyCQj3q/BTOsxYAlo4IH65aqwx/V8uPWB3ZFS4bYoyvn6ydSv
         NdfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=7GU2D4vYzLYBepPpUWWD2Ke6DlQL7r5dpnA5gTpqWrE=;
        b=x9N0oCbBFLVEFxX6d5WtO7flPbdVpCUoSdmKCOLKbSBYHPWYCxadat1ecXVzDAMKEy
         7oORm4EbepcYivDik7UwUgx75bv2iB8zfjq7qlTA3ITNslEz0eYSCNJ8aPwhlN0KAnMB
         vsz3FX/v/OnXqViuU7Duuc6GahX9AHmK0PovRZymkzxesb1Gr59axkGMs+FdJhLDodnn
         RAlDGpsHjIn0oBpved6nboztao4jSO/BkrBWSHHMF+/e4LaUJvlYcVC6wWiI2HsX61eT
         PvEFGEFRKKzpbUfn2gL+HqZcgylXEKexxYPC3YRij67bKyOVXBUS0OQ+ayYwAeLgb2MS
         Jd4Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=B5Zne3mv;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400d:c0d::243 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <srishtishar@gmail.com>
Received: from mail-qt0-x243.google.com (mail-qt0-x243.google.com. [2607:f8b0:400d:c0d::243])
        by gmr-mx.google.com with ESMTPS id t131si73385ywe.15.2017.09.06.14.00.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 06 Sep 2017 14:00:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400d:c0d::243 as permitted sender) client-ip=2607:f8b0:400d:c0d::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=B5Zne3mv;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400d:c0d::243 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-qt0-x243.google.com with SMTP id q8so3866286qtb.1
        for <outreachy-kernel@googlegroups.com>; Wed, 06 Sep 2017 14:00:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=7GU2D4vYzLYBepPpUWWD2Ke6DlQL7r5dpnA5gTpqWrE=;
        b=B5Zne3mv3YTDnY3hJx2pr/w57iCdgrQ9luE2C2XEO3NkaBo8nrmg+Ys+MBbX3nylKE
         HmjahEuHT6ydsTVq7oeaSIgB6/NHQubmOcsWYDLt1JeRz+vIC09PsK2OIxc3vL7QahZ4
         qiik1GA0oklhDIrbwV728RSy3nq48EG9DDTqQmYmCVgxFdLlbudkqfKWVCzw5LpH0btv
         V1BFAXvcxY3NnSuMj4lsQhGqntW4GrGpD0oz1hlZf5yOuyXJiRc32QNGDApagcIpYNHn
         K0h2dkEvG45C8XyPl8HB74JtcjyMgOpZ5rAkUNDBDvxQA80rd0R72s2huKqkPXQvuqFD
         ESQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=7GU2D4vYzLYBepPpUWWD2Ke6DlQL7r5dpnA5gTpqWrE=;
        b=Z3VqaNJ7Oxsx2MLlekpRJ9pUTR3DcptoBi2Zlw4AxUjW5vpVY2C4aIBbEINI9KeElI
         9PD+q77v4sdT1xXJi7pzeuchGosiCLz8KxUJYuSyRJCovoBPYMLEVh4Hae2z6EBlZVNA
         QByyIqFClSf/TdMHX2NEsA2N3opJ0tVWZlmrFtvI6BXF141u/vr8phPqucJYNOlVd84L
         txoZ5WUh96eohDhK1A22SQ7kFeEeMFS9xai+Xboufai0FpF+UU4dArJ/u6PpRcmCnjVu
         suBH1oMSIlULQ5FqhW7Rf6vcmwrEq83A/FlFy14w85d0W9n9z6txaweUPmIEqvbjBdnn
         cNNQ==
X-Gm-Message-State: AHPjjUhNJ9kyHLquMLi4FcdAQ44cBgl1Fxlbh1kVxjrZMAEXBbpJMQ1j
	J1QJQni+JxgcjlHrPqmun4304ROtOA==
X-Google-Smtp-Source: ADKCNb6RJnZmpWh/tdgu5wMZepnAIkcicJJVyaWe1exACT/H3gGxVYrb1K2aKLAz5IPHAkw05iaAWMJfLxTQH1hJYGE=
X-Received: by 10.200.57.130 with SMTP id v2mr690198qte.101.1504731600645;
 Wed, 06 Sep 2017 14:00:00 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.200.55.118 with HTTP; Wed, 6 Sep 2017 14:00:00 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.20.1709062258000.2984@hadrien>
References: <1504731390-9536-1-git-send-email-srishtishar@gmail.com> <alpine.DEB.2.20.1709062258000.2984@hadrien>
From: Srishti Sharma <srishtishar@gmail.com>
Date: Thu, 7 Sep 2017 02:30:00 +0530
Message-ID: <CAB3L5owNmnR5poc9a3pH-fp+m7us4yztzPs9dzNRjzYVEneRgA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: ccree: ssi_cipher.c: Make
 comment more comprehensible.
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Greg KH <gregkh@linuxfoundation.org>, Gilad Ben-Yossef <gilad@benyossef.com>, 
	linux-crypto@vger.kernel.org, driverdev-devel@linuxdriverproject.org, 
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, 
	outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset="UTF-8"

On Thu, Sep 7, 2017 at 2:28 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Thu, 7 Sep 2017, Srishti Sharma wrote:
>
>> Edited comment to make it more comprehensible.
>>
>> Signed-off-by: Srishti Sharma <srishtishar@gmail.com>
>> ---
>> Changes in v2:
>>  - Make comment more comprehensible , instead of just correcting typos.
>>  drivers/staging/ccree/ssi_cipher.c | 4 +++-
>>  1 file changed, 3 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/staging/ccree/ssi_cipher.c b/drivers/staging/ccree/ssi_cipher.c
>> index 99232b2..fec2faa 100644
>> --- a/drivers/staging/ccree/ssi_cipher.c
>> +++ b/drivers/staging/ccree/ssi_cipher.c
>> @@ -702,7 +702,9 @@ static int ssi_blkcipher_complete(struct device *dev,
>>
>>       ssi_buffer_mgr_unmap_blkcipher_request(dev, req_ctx, ivsize, src, dst);
>>
>> -     /*Set the inflight counter value to local variable*/
>> +     /*
>> +      * Save inflight_counter in a local variable.
>> +      */
>
> This is the format for multiline comments.  Your comments is only one
> line.  You just need to add spaces around the text, as compared to the
> original version.
>
> julia
>
>>       inflight_counter =  ctx_p->drvdata->inflight_counter;
>>       /*Decrease the inflight counter*/
>>       if (ctx_p->flow_mode == BYPASS && ctx_p->drvdata->inflight_counter > 0)
>> --
>> 2.7.4
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1504731390-9536-1-git-send-email-srishtishar%40gmail.com.
>> For more options, visit https://groups.google.com/d/optout.
>>

Okay, Thanks I'll re-send it .

Regards,
Srishti

