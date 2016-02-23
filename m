X-GM-THRID: 6254173347374956544
X-Received: by 10.13.192.134 with SMTP id b128mr33403451ywd.43.1456251541673;
        Tue, 23 Feb 2016 10:19:01 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.153.111 with SMTP id vf15ls938815igb.7.gmail; Tue, 23 Feb
 2016 10:19:01 -0800 (PST)
X-Received: by 10.107.133.10 with SMTP id h10mr33993523iod.8.1456251541366;
        Tue, 23 Feb 2016 10:19:01 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-qg0-x22c.google.com (mail-qg0-x22c.google.com. [2607:f8b0:400d:c04::22c])
        by gmr-mx.google.com with ESMTPS id v197si1787431ywa.1.2016.02.23.10.19.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Feb 2016 10:19:01 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400d:c04::22c as permitted sender) client-ip=2607:f8b0:400d:c04::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400d:c04::22c as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x22c.google.com with SMTP id y89so142787452qge.2
        for <outreachy-kernel@googlegroups.com>; Tue, 23 Feb 2016 10:19:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc:content-type;
        bh=VqsnPt9Orsy6kjCOH91XwpI1GZ4cwXX0on+7gT0MUJE=;
        b=0XiZLmlTvnqq1prVN1HfEYIk2oPqBPwo8JHG5KKxiXQ7NrLWCLoCRIQ7YxVhwCuRrY
         ztC3z8FQhvz9oiMJrIxtM3YlC3TbSNB2IrC8TeTc3hiwtZykwNvzzMokWX+T9rXRoWlu
         58Adf+x5XRCmIgPb5bHG8AMirSFUUvK90bkMAdVRDsIIiWt/mq7ib90pQYBn0h6nqBQ5
         S6kLoboQX/NA8zL0dF0cMDLoJTfqs9hGCjBD36IG1CKiiL8b5Uzypuem9Duybar2zW0X
         FVvKCaHT2D0dJU/pI/LI4Idx8/NOpOkx3CwkbIkhlctSKUBHQYAhrB8etQIits5e8nQZ
         9F9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc:content-type;
        bh=VqsnPt9Orsy6kjCOH91XwpI1GZ4cwXX0on+7gT0MUJE=;
        b=kRg7eDVkG+Tjf6eq52aVCjHdp6CFKiki6s9QpLiyEJfEntoCQzMQia6xnq6wR3x4Eq
         zhsqLh0MkvEXlm24luQOO/lTtcOsFMxw1ixn3A6vVUN6YeD+1rgx/iVrbBViCB4YuszZ
         1jg6kofgEI7O7Gr89K956qF55hfmqZTTcW9Hk8Q6Oe5H9sZkkUoTuOmXu7ojmsyzt22L
         lv7mODqqK19cdaLKwjJPiWQAv9aZZIhDa5BfppVGWa6E8b9g/rKbLOZF0+AcZ+hyt49D
         WEW5eg2R4x+EAT+Hnv8t341iVn7kkiIPXtFXT4KUEtifHh5uiHhYN2jRc7GE8/aN3QYY
         8lMQ==
X-Gm-Message-State: AG10YORXOESgcizuSBTMe8O4UBA395rzGhzvP1pZjwjKcnQAKujsUD7iaZK4ZAumq4TsAhrrwVTO+OJqEL4I+A==
X-Received: by 10.140.19.79 with SMTP id 73mr6087085qgg.72.1456251541193; Tue,
 23 Feb 2016 10:19:01 -0800 (PST)
MIME-Version: 1.0
Received: by 10.55.217.215 with HTTP; Tue, 23 Feb 2016 10:18:21 -0800 (PST)
In-Reply-To: <alpine.DEB.2.02.1602231648460.2040@localhost6.localdomain6>
References: <20160222174716.GA27662@Karyakshetra> <alpine.DEB.2.02.1602231648460.2040@localhost6.localdomain6>
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
Date: Tue, 23 Feb 2016 23:48:21 +0530
Message-ID: <CAFNHFT85TWqvUEdyNyKh5oocNGpDsbugX+hkjcyPaQ4oAUVfrw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2] staging: fbtft: Use kmalloc_array
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

Hello Julia,


On Tue, Feb 23, 2016 at 9:19 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Mon, 22 Feb 2016, Bhaktipriya Shridhar wrote:
>
>> Use kmalloc_array instead of kmalloc for arrays to prevent integer
>> overflows.
>> This was done using Coccinelle:
>>
>> @@
>> expression e1, e2;
>> constant C;
>> type t;
>> @@
>> (
>> - kmalloc(
>> + kmalloc_array(
>> e2
>> - *
>> + ,
>> sizeof(e1), C)
>> |
>> - kmalloc(
>> + kmalloc_array(
>> e1
>> - *
>> + ,
>> sizeof(t), C)
>> |
>> - kmalloc(
>> + kmalloc_array(
>> - sizeof(e1)
>> - *
>> e2
>> + ,
>> + sizeof(e1)
>> , C)
>> |
>> - kmalloc(
>> + kmalloc_array(
>> - sizeof(t)
>> - *
>> e1
>> + ,
>> + sizeof(t)
>> , C)
>> )
>>
>> Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
>> ---
>>  Changes in v2:
>>       - Modified Coccinelle script to respect 80 character limit.
>
> I'm not sure to understand this comment.  Was the Coccinelle script itself
> over 80 characters, or was it producing code that went over 80 characters.
> In the latter case, changing the spacing in the semantic patch won't
> affect the spacing in the generated code.
>

The earlier Coccinelle script produced code that went over 80 characters.
In my current script, I'm replacing asterisk with a comma, so that the
expressions around stay in their place.

This was my script earlier, which failed to respect the 80 character
limit. It replaced the function calls line by line and hence the 80
character limit was violated.

@@
expression e1, e2;
constant C;
type t;
@@
(
- kmalloc(sizeof(e1)*e2, C)
+ kmalloc_array(e2, sizeof(e1), C)
|
- kmalloc(e2*sizeof(e1), C)
+ kmalloc_array(e2, sizeof(e1), C)
|
- kmalloc(e2*sizeof(t), C)
+ kmalloc_array(e2, sizeof(t), C)
|
- kmalloc(sizeof(t)*e2, C)
+ kmalloc_array(e2, sizeof(t), C)
)

If you insist, I can send a v3 for this with the "Change in v3"
statement modified.


Thanks,
Bhaktipriya

