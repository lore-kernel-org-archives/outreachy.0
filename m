X-GM-THRID: 6396247239473233920
X-Received: by 10.99.125.11 with SMTP id y11mr2004278pgc.10.1489592684043;
        Wed, 15 Mar 2017 08:44:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.68.202 with SMTP id p10ls2483430otg.18.gmail; Wed, 15 Mar
 2017 08:44:43 -0700 (PDT)
X-Received: by 10.129.163.208 with SMTP id a199mr2010778ywh.135.1489592683603;
        Wed, 15 Mar 2017 08:44:43 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-it0-x233.google.com (mail-it0-x233.google.com. [2607:f8b0:4001:c0b::233])
        by gmr-mx.google.com with ESMTPS id z191si83836itc.0.2017.03.15.08.44.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 15 Mar 2017 08:44:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:4001:c0b::233 as permitted sender) client-ip=2607:f8b0:4001:c0b::233;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:4001:c0b::233 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-it0-x233.google.com with SMTP id w124so51764280itb.1
        for <outreachy-kernel@googlegroups.com>; Wed, 15 Mar 2017 08:44:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=T7Mai3pU2smtdhpDTtA1AlAvOq6cUWZT1b8O9yPKLJc=;
        b=iV/xR9EcR8BtVcft92ri42WF20SlAV+GBOYF4SeOisTdjfj2CjfUJ2uHy4LLYubT+T
         YaX2CRhIAjqGJMWZqhSt0sR2hrt0jAYfUkYtLxRxHoAGFm+WuWuy/oYTJ+KbpJhwz+bL
         at4vAZULYl8A3wRrG1NIvtPZH9PrWilPdrdvdz2nKb3pdcorsGqnqKpXVdxe8vwiJz9Y
         jIjVM6h6UneAF2LDTz6CbTfyd8OaCRAHToQq2GUecmfIytCmcQVhMQquvjfyKetWumbS
         VUkJJiWw9tDLGc+xMAYudGwlWsBTM4TEm4Y6WgS/jXd6UQaOXguIreYnMvG76Y3F556T
         8MBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=T7Mai3pU2smtdhpDTtA1AlAvOq6cUWZT1b8O9yPKLJc=;
        b=oIcTXwrqDiqCTWyrjAzEKQKEkd5josvZbWDsxyCB/Qhj7Hxn0QQe6+L5DzlZEanma2
         mOLIqScoc1oHYtp1OoihzG4j58ZUoL+NYxH/odEQ6fvU9VwHQcKCdWVBOIzOF7OQD81S
         wDtz10bvlQQ7erIWu94fBv24Uk92ad3kaETtIhPo4KqtPGpvaLSCuDYP60wzFIvZcJBl
         H09EbhSCHdWZv3Z/TnhE6qeBWjrKUjcMrNR+VXpXBEkG48rw8PFgvb5l95w/cSdAreOm
         EGampvJH4yalsX8mEOI6u4AUkhlCHsysZ5m0CgiCtYfmYqfLpmYbUntXLA9PkeM7L54e
         YQ0g==
X-Gm-Message-State: AFeK/H3j5m2x7VzCw8f+uFS14BroI10GctVz4LUpwEJ08L8QLrlENUzbaIEEpoXuZTtZaZGRrjmYPIO+WCrynQ==
X-Received: by 10.36.47.213 with SMTP id j204mr21465440itj.7.1489592683377;
 Wed, 15 Mar 2017 08:44:43 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.51.74 with HTTP; Wed, 15 Mar 2017 08:44:02 -0700 (PDT)
In-Reply-To: <CAEnQRZCjGJYSeO2TaeFGuRURMC2CRpinOTaBBiOrTuYXBGVGKQ@mail.gmail.com>
References: <1a480897-bdb9-4d3c-8143-d5347f67c2b6@googlegroups.com>
 <e64c8df1-dce6-42e3-b186-1c85380a2734@googlegroups.com> <CAEnQRZCyfGZh1AigeYW1UOn-ECvyQX1+HUiVp8OQ_rq2ZFWFFA@mail.gmail.com>
 <09641868-447c-4cfd-ab88-c33d932846ef@googlegroups.com> <CAEnQRZCjGJYSeO2TaeFGuRURMC2CRpinOTaBBiOrTuYXBGVGKQ@mail.gmail.com>
From: Varsha Rao <rvarsha016@gmail.com>
Date: Wed, 15 Mar 2017 21:14:02 +0530
Message-ID: <CAAFX7JSiXo-kLxc4xni0+nGahoCsDtRbWiFgmSQoKBDYUwNoxA@mail.gmail.com>
Subject: Re: [Outreachy kernel] Re: Trouble with IIO dummy build.
To: Daniel Baluta <daniel.baluta@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

  Hello,

> It means that mounting of configfs failed silently somehow.
>
> Can you tell us the result of mount command? This should list all mounted paths.

  Kindly check the link.
  http://pastebin.com/pfuP4cgU

  Thanks,
  Varsha

