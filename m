X-GM-THRID: 6466685388473761792
X-Received: by 10.98.204.139 with SMTP id j11mr16530355pfk.11.1505642521774;
        Sun, 17 Sep 2017 03:02:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.197.65 with SMTP id v62ls589358iof.12.gmail; Sun, 17 Sep
 2017 03:02:00 -0700 (PDT)
X-Received: by 10.202.106.129 with SMTP id f123mr7672450oic.42.1505642520911;
        Sun, 17 Sep 2017 03:02:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505642520; cv=none;
        d=google.com; s=arc-20160816;
        b=cgo4rS8JBbZbVnW80l1GqJAayN33XXS+a3bjZVZjkVMc4OxGShnNJlPa+IH5/ggZD6
         m6mPnbyHzUSv2zQfB3wMFKKaGq3oBFJ7MvglC6HTC/TOlO4Xv2FWpWdh0FdPXpEi+t2R
         vKo7YA1+BH57y3sjIxxrxQ8ElaLgdcfhSFPvE1qiBoAtF8C/jmZGWA1Kb/3gHO/dFp54
         meCU4UkTA5qEkwPDiE8aQGuFIkHYI3ln8HHAOuOzTfKJ9TqigvR9hjgZQoJgQylUjatV
         PXAcsK15wCTLDnQ6cU7I3XY819BS1KsQVBLx9CgXFuiCHj0HB8SbM3gI6nYsNEQ8yRIJ
         nDWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature:arc-authentication-results;
        bh=F03b4ear/ChJbHEmTEvlxygdlC3LCYVOkCulvarZYEI=;
        b=CwZ77QJWIeh0yHsA7kztbsda4wCzTlO15k6AJREkVDJfZ0pL9bLYUQy9x9I8hNh4MC
         8U2tCC4COawYEqgYGAOMA8hgWGCs5SrDo9woxP/xTH4ZbSfUMp39hi7fpiENanPXuMOL
         jfmF3AiM+hKcEzAQ0CU4CKIBwz5UyrRPXpe40Ipa7n4OH2Q+HyB8k9oYt5G1eyuwNlYQ
         W4eFveQobMYj0i38shRK3Gu4FlLWk7Df59kzZHoFxUKaRqFDkhknfnTNj7jxldet4Anu
         BmCWrKnOeuxq4yjBferYKA8HDB+8JPWIuwwIOB5ATAX3m67MJB/FQ4XHydGrGaORUhyT
         DftA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OQFE95gQ;
       spf=pass (google.com: domain of himshijain.hj@gmail.com designates 2607:f8b0:400e:c05::236 as permitted sender) smtp.mailfrom=himshijain.hj@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <himshijain.hj@gmail.com>
Received: from mail-pg0-x236.google.com (mail-pg0-x236.google.com. [2607:f8b0:400e:c05::236])
        by gmr-mx.google.com with ESMTPS id w11si286064pfk.4.2017.09.17.03.02.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Sep 2017 03:02:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of himshijain.hj@gmail.com designates 2607:f8b0:400e:c05::236 as permitted sender) client-ip=2607:f8b0:400e:c05::236;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OQFE95gQ;
       spf=pass (google.com: domain of himshijain.hj@gmail.com designates 2607:f8b0:400e:c05::236 as permitted sender) smtp.mailfrom=himshijain.hj@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x236.google.com with SMTP id u18so3615754pgo.0
        for <outreachy-kernel@googlegroups.com>; Sun, 17 Sep 2017 03:02:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=F03b4ear/ChJbHEmTEvlxygdlC3LCYVOkCulvarZYEI=;
        b=OQFE95gQmsVg2EueHoYsuaNHRMWLpQXAZWt/OSu+DC2ELRKMoUjGfrXcnVU4x69BMw
         a4fr0QJ70S1ZwbLvtNP5HwKrBuQAE/OBRxkU/HmBZYAgEI+b4GLWsGkL3ynC1Zv9t/Vb
         YQwfzkaf3GG8UGCZH94d520NXge0iPWgXZToJxU50yykxSJany1GHAaU+MYCTkANgEuL
         lQRp8fuhKLEbTZ7Vc0iSPbRxaFChliKxcR3GwpOhOt6xFD+GoiUuglBUkIfDOKB1Tr2I
         ufy6YVEo7IvBMqwLdeShwVbC+vnMiaHtNFWEbqBpi3NSVpyl56ud47+9nkrG00Xw9Zav
         xs8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=F03b4ear/ChJbHEmTEvlxygdlC3LCYVOkCulvarZYEI=;
        b=BASIqDptqyY5jBmQlFcRJWrS6u7/5J8FPkZyqTJlT9Vl3gplJ9/uxFrKuAE+pj+CB1
         QWIhFTjvGlQ4MO7CjWFSIooeZpW3z4d9F/VqcBIXmDWQJsg/3YOD11T1BDvCEOHGzKNH
         FGeyv01l2BBjRVY+1aMriOcdICw/OKQKRKijQ50cC1FMgXHSACN+0QejqbhwB5P08x/p
         VB8h+PM5LP4cXE+M6A0S59g0AWOAPegqFXzdHo7kaPo7nV0JNJ4OxfWBMBqBXvp6ZD8X
         LJzNB0zoMtnlvhoF8q6KxaN7ZldswJHrYYSbRqMhP3jDgPWW5ufCkAWIxvqA1aNCou+i
         ue+w==
X-Gm-Message-State: AHPjjUg15MpvtgysoXwU9fFFCQs1ZKW65iiLhL9C5gJG3XeWX+SoDbo4
	POP44h0zCzBxFvEbjsQ=
X-Google-Smtp-Source: AOwi7QCaU7kUgeEdlUcjLTAAujxqmCb+VkNDfNI9gPdHIKZlu2ygCNxTQjGQnM3OWjyCewpTNIqD9A==
X-Received: by 10.159.218.75 with SMTP id x11mr9031151plv.92.1505642520280;
        Sun, 17 Sep 2017 03:02:00 -0700 (PDT)
Return-Path: <himshijain.hj@gmail.com>
Received: from localhost ([223.190.21.169])
        by smtp.gmail.com with ESMTPSA id k13sm8975892pgo.51.2017.09.17.03.01.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Sun, 17 Sep 2017 03:01:59 -0700 (PDT)
Date: Sun, 17 Sep 2017 15:31:52 +0530
From: himanshi <himshijain.hj@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [KERNEL NEWBIES ACCESS]Himanshi Jain
Message-ID: <20170917100152.GA4187@himanshi-Inspiron-5558>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This is to request to please grant edit privileges on my username:
Himanshi Jain

Thank you!

