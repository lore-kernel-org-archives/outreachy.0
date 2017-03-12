X-GM-THRID: 6396667328901152768
X-Received: by 10.28.165.138 with SMTP id o132mr159810wme.4.1489341849532;
        Sun, 12 Mar 2017 11:04:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.22.2 with SMTP id w2ls164605ljd.48.gmail; Sun, 12 Mar 2017
 11:04:08 -0700 (PDT)
X-Received: by 10.46.81.66 with SMTP id b2mr4672435lje.3.1489341848920;
        Sun, 12 Mar 2017 11:04:08 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-lf0-x231.google.com (mail-lf0-x231.google.com. [2a00:1450:4010:c07::231])
        by gmr-mx.google.com with ESMTPS id y19si596461wmd.0.2017.03.12.11.04.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 12 Mar 2017 11:04:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2a00:1450:4010:c07::231 as permitted sender) client-ip=2a00:1450:4010:c07::231;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2a00:1450:4010:c07::231 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x231.google.com with SMTP id y193so56108399lfd.3
        for <outreachy-kernel@googlegroups.com>; Sun, 12 Mar 2017 11:04:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=lw8pR+cE6CyIOAzdOiJ9rHfcJRabZmkooK5jLk8aFeM=;
        b=gb6mFGKiEs2H+6WziL6As5nXH1OymzaHmKJw3crXHn2ij61jp88dFHA+hl7AW3Ud0Q
         MUOu5qffdpV3DXU3M/WwyVxJcFK0OghEblcf25SUkCmGJ4iFRWaiRwFluoOroXJPkcOK
         aLtoJfBfAknhb33rSkpA1pYucK+TtLUXrS3X13LkxZ3KOA39/fzn0FfBtKwAlxxcQGkM
         5BqlhQabIj3YdUhoxlDUTPWmwjSR2kBxqYCkiDXB3PzjGASMxxzaiGtmacnw6RaAk0fY
         y46EH2RxHC5270dg5+i2qlIsnVPkPXAittwsoDdejKs71QD3Ibly9/Gkqez+jOv9HXwE
         H25A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=lw8pR+cE6CyIOAzdOiJ9rHfcJRabZmkooK5jLk8aFeM=;
        b=aRC1iYzwxdiWH+2/zQtv+kr+fzcQ+TniHx1gvooStJoXWmi4k+hvgmOx+4M8uQPDsw
         vOFA0CLfJRSBoBVDMkfgVh153vKvXTc7D8ZC7zxdd3kirk9s75imnc+9IemoQPx4Sb0Z
         SrS/1OXiqpSbJjZV5VvP8G+ZwSEGwRBT0A2XacDedqTnthWLB4umv+HrKsuIHiT0H/9q
         NWhNUTpIrjrkDjSGclyL5VZFaMWiVolfJqJlPn7b8yDMsUh6lQknKUs4GmF9ybp8FgGp
         0AFZBpGxKR+2iz6jvpm2cUgq+lmF40fuglJCEGor7hRvlEmVGx50W8LUigrNMFUN9pmd
         w49w==
X-Gm-Message-State: AFeK/H3UDw+oZTl1ZIuR2GmD2jFCLYSw+09YQRKjgabV7wmBkY57ID0lVwkHLHDuHPksqFliqrIc1y7Bl52S0g==
X-Received: by 10.25.233.201 with SMTP id j70mr135347lfk.20.1489341848413;
 Sun, 12 Mar 2017 11:04:08 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.25.15.39 with HTTP; Sun, 12 Mar 2017 11:04:08 -0700 (PDT)
In-Reply-To: <20170312174439.GC3711@d830.WORKGROUP>
References: <4356b92a-36b0-48b6-b4eb-f1d1df878262@googlegroups.com> <20170312174439.GC3711@d830.WORKGROUP>
From: SIMRAN SINGHAL <singhalsimran0@gmail.com>
Date: Sun, 12 Mar 2017 23:34:08 +0530
Message-ID: <CALrZqyMST31oTsi0zJDoG3PZsvQGRDmc46F2hFgOe7g1vzv9Kw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [KERNEL NEWBIES ACCESS] simran singhal
To: Alison Schofield <amsfield22@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Sun, Mar 12, 2017 at 11:14 PM, Alison Schofield <amsfield22@gmail.com> wrote:
> On Sun, Mar 12, 2017 at 10:36:10AM -0700, SIMRAN SINGHAL wrote:
>> Hi,
>>
>> I want edit privileges.
>
> Done. Let me know if it doesn't work.
>
>
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/4356b92a-36b0-48b6-b4eb-f1d1df878262%40googlegroups.com.
>> For more options, visit https://groups.google.com/d/optout.
>

For sending the patches regarding Coding Task 2, we have to send
them normally on outreachy mailing list or follow the instructions given on:
https://kernelnewbies.org/IIO_tasks

