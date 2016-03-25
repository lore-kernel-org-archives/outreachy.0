X-GM-THRID: 6265914371751280640
X-Received: by 10.112.158.138 with SMTP id wu10mr1687028lbb.11.1458913834822;
        Fri, 25 Mar 2016 06:50:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.125.141 with SMTP id y135ls76781wmc.0.canary; Fri, 25 Mar
 2016 06:50:33 -0700 (PDT)
X-Received: by 10.28.15.82 with SMTP id 79mr4191484wmp.3.1458913832921;
        Fri, 25 Mar 2016 06:50:32 -0700 (PDT)
Return-Path: <sveta.orlik.code@gmail.com>
Received: from mail-lf0-x230.google.com (mail-lf0-x230.google.com. [2a00:1450:4010:c07::230])
        by gmr-mx.google.com with ESMTPS id ai9si637543lbc.2.2016.03.25.06.50.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 25 Mar 2016 06:50:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of sveta.orlik.code@gmail.com designates 2a00:1450:4010:c07::230 as permitted sender) client-ip=2a00:1450:4010:c07::230;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of sveta.orlik.code@gmail.com designates 2a00:1450:4010:c07::230 as permitted sender) smtp.mailfrom=sveta.orlik.code@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x230.google.com with SMTP id d82so55458434lfe.3
        for <outreachy-kernel@googlegroups.com>; Fri, 25 Mar 2016 06:50:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=subject:to:references:cc:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding;
        bh=/F3pqrd7FDNVfTHdO4vitcIig4jIOJcQdg7ROsX/Cac=;
        b=RYjtsw4Qbf+DMmC077Qmc0mk3jumbN5i+94mp0bc/FDcyqpUV8QvgtZteEy9wKGXlP
         OBICrhUnZ9HfA0PKDtk0yQWEU2NPwDZNgqwFz5u4KxEG0xBui78p4ysgdjCq1T0Xnw4U
         WkW0oew+0iyKqdI5sL+996ejHDIVlPfvY7TagRVkkqa3YZOqOe5nBMSIb8Xs3+uh1bUj
         QwnyK7N9+6GNgUln9J0+sqsWSfS1nfRJ8v7BUgOW5IVzg9gJ2R24+xKaZMPyIRMNeul4
         4UPMmHz5PrE9+QOoptEBI8fRhxtX/XLGa+BAusg2nGj6SzVlsXn35H9QFjhYgu4zbapn
         cM9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:subject:to:references:cc:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding;
        bh=/F3pqrd7FDNVfTHdO4vitcIig4jIOJcQdg7ROsX/Cac=;
        b=mTN9ppjxKSVLi+TpvPI5R7mWsVGbjxt51V6E+taBSs/aJ1qMEE6Tpzek0M+ngi+4JX
         GPFqnDrQqc94fna2Ugd83BxmpzXAdIE6erx3RbGvREZDmDLa2ZKc1g56xnsiT7/8OfJh
         YNmRdaGAwEkGfHOuxYUpEz9YZhhZBNtd9b1f/vv8IfSL1ir7AUxnMltzy2H3PcBxeL3q
         yNy6pKGjbTp3rDZnBmo5016AQeoP81YYbbil7F/rRg+G2UMBrt57PIW5oOkL8STEfE3s
         zERWp0uM3xm/YUGedKytEbCVuvU8UnH89r1ah4dgLlvQUuqYpqHNftrLJ9ptoVgUEIZk
         /ueg==
X-Gm-Message-State: AD7BkJKC+W0uqdJBLEG+ORpERMNzFnuNZMzkVYIESVdPaQYL48uQWB23/DXTf/uBlkjA3A==
X-Received: by 10.25.144.200 with SMTP id s191mr1276230lfd.123.1458913832797;
        Fri, 25 Mar 2016 06:50:32 -0700 (PDT)
Return-Path: <sveta.orlik.code@gmail.com>
Received: from [192.168.0.30] (broadband-46-242-29-57.nationalcablenetworks.ru. [46.242.29.57])
        by smtp.gmail.com with ESMTPSA id qn2sm1961470lbb.49.2016.03.25.06.50.31
        (version=TLSv1/SSLv3 cipher=OTHER);
        Fri, 25 Mar 2016 06:50:32 -0700 (PDT)
Subject: Re: [Outreachy kernel] Troubles doing Tutorial
To: Julia Lawall <julia.lawall@lip6.fr>
References: <56F4FFE9.6030307@gmail.com>
 <alpine.DEB.2.10.1603251437070.2507@hadrien>
Cc: outreachy-kernel@googlegroups.com
From: Svetlana Orlik <sveta.orlik.code@gmail.com>
Message-ID: <56F54228.3070407@gmail.com>
Date: Fri, 25 Mar 2016 16:50:32 +0300
User-Agent: Mozilla/5.0 (Windows NT 5.1; rv:38.0) Gecko/20100101
 Thunderbird/38.7.0
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.10.1603251437070.2507@hadrien>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

25.03.2016 16:37, Julia Lawall пишет:
>> 2. Submitting a patch using mutt went OK, but when I tried `git send-email` - I got error:
>> sendmail: fatal: open /etc/postfix/main.cf: No such file or directory
>> Died at /usr/lib/git-core/git-send-email line 1292, <FIN> line 3.
>
> Do you know what is the solution for this?

Add this to .gitconfig, like Eva Rachel Retuya wrote:

[sendemail]
    smtpserver = /usr/bin/esmtp

I checked, it works.


--
Sveta.

