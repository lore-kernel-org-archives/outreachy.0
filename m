X-GM-THRID: 6396247239473233920
X-Received: by 10.129.111.65 with SMTP id k62mr2034609ywc.8.1489593298141;
        Wed, 15 Mar 2017 08:54:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.36.137 with SMTP id f131ls850228ita.7.gmail; Wed, 15 Mar
 2017 08:54:57 -0700 (PDT)
X-Received: by 10.99.98.193 with SMTP id w184mr2110861pgb.83.1489593297013;
        Wed, 15 Mar 2017 08:54:57 -0700 (PDT)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-io0-x22b.google.com (mail-io0-x22b.google.com. [2607:f8b0:4001:c06::22b])
        by gmr-mx.google.com with ESMTPS id t8si95758ith.0.2017.03.15.08.54.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 15 Mar 2017 08:54:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2607:f8b0:4001:c06::22b as permitted sender) client-ip=2607:f8b0:4001:c06::22b;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2607:f8b0:4001:c06::22b as permitted sender) smtp.mailfrom=daniel.baluta@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-io0-x22b.google.com with SMTP id l7so22935077ioe.3
        for <outreachy-kernel@googlegroups.com>; Wed, 15 Mar 2017 08:54:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=bn5dPE1kvanZY63ncBOmY30fPTbLufu1OBQTgU6+4tA=;
        b=MKRXdwV+vhMI+tPEl4gE9K46DjUgXvX0GjgArtoTwtpl2PexB+oPTZ+HIsma7Ok7JS
         3AX2dORsb+HdlPd/pvC+Ikvxg9HKujUS9KzxQMFwOMtnVjg4f8pnmD1mLvaBoYrG3Iib
         2SrfEbHIl5WZjspfRIuRVnBqzEVkzwjusD+snc7ALV1plk1Yc+dzDnbIQZOIRdW/iW+7
         M2neqc7y4sYrB4UMkpeLEexp1yDMhbGlxtXGNpMRqzrmKxdFf90cHIjXOwqpoi5PVkWa
         2qffKd+xetoxqkn52fMVq4HdWacEIAV/SVOZpqQyVzpBLEKVvHB9Pjv0EBys5kY8dyu3
         j3Ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=bn5dPE1kvanZY63ncBOmY30fPTbLufu1OBQTgU6+4tA=;
        b=YZoT/MFwpPuVX5H8JRgcJM5QerbtKbn6kNim3plqOL3NeUm2dLbiTiQ8HLnpCDnL0Y
         3uRjdGvWvH8qGN8Ay1lymXbTlO8WItRv/iLPOoEVcKlLtQ4LsaEi0M1AEVGoNNoZYdZp
         ZmvlTNtURlKH3t3JzNxdBNOIO+FQvE8El2sN/+156MtKesSPKCtYVHApJSMSV6Mi5ATY
         BWec2zDWcU2QgXQnUnmBoKKxP05iaD6c3BAgeQaLHa8LDdjOUHojV2pzp8ionjzU53vH
         bpNOsES3ToeI7wS4E52Zwywbr8f+k+qwQHEKNmOn2VZ1VihwqGXEB+Vc17hHOy7PLrGU
         GQFA==
X-Gm-Message-State: AFeK/H3xs9lvtgTW7kZ1AM91GK8bWcwiOiad4qWUfvRG0axxRzXwGRi/ERQokOe5QoALEU7lJ+J+z59qfBYGgg==
X-Received: by 10.107.35.129 with SMTP id j123mr5785701ioj.195.1489593296812;
 Wed, 15 Mar 2017 08:54:56 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.26.201 with HTTP; Wed, 15 Mar 2017 08:54:56 -0700 (PDT)
In-Reply-To: <CAAFX7JSiXo-kLxc4xni0+nGahoCsDtRbWiFgmSQoKBDYUwNoxA@mail.gmail.com>
References: <1a480897-bdb9-4d3c-8143-d5347f67c2b6@googlegroups.com>
 <e64c8df1-dce6-42e3-b186-1c85380a2734@googlegroups.com> <CAEnQRZCyfGZh1AigeYW1UOn-ECvyQX1+HUiVp8OQ_rq2ZFWFFA@mail.gmail.com>
 <09641868-447c-4cfd-ab88-c33d932846ef@googlegroups.com> <CAEnQRZCjGJYSeO2TaeFGuRURMC2CRpinOTaBBiOrTuYXBGVGKQ@mail.gmail.com>
 <CAAFX7JSiXo-kLxc4xni0+nGahoCsDtRbWiFgmSQoKBDYUwNoxA@mail.gmail.com>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Wed, 15 Mar 2017 17:54:56 +0200
Message-ID: <CAEnQRZD5BS3VrgLb2y0OvOqrnGoxY3D6J57fCb_FgjF1ZYPPpQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] Re: Trouble with IIO dummy build.
To: Varsha Rao <rvarsha016@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Wed, Mar 15, 2017 at 5:44 PM, Varsha Rao <rvarsha016@gmail.com> wrote:
>   Hello,
>
>> It means that mounting of configfs failed silently somehow.
>>
>> Can you tell us the result of mount command? This should list all mounted paths.
>
>   Kindly check the link.
>   http://pastebin.com/pfuP4cgU

Ok, so configfs is already mounted:

configfs on /sys/kernel/config type configfs (rw,relatime)

You should be able to see: /sys/kernel/config/iio and
follow your work from here.

