X-GM-THRID: 6394745147099185152
X-Received: by 10.157.60.72 with SMTP id j8mr179573ote.52.1488895236100;
        Tue, 07 Mar 2017 06:00:36 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.88.40 with SMTP id r40ls522518oth.13.gmail; Tue, 07 Mar
 2017 06:00:35 -0800 (PST)
X-Received: by 10.237.62.206 with SMTP id o14mr83331qtf.43.1488895235646;
        Tue, 07 Mar 2017 06:00:35 -0800 (PST)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-io0-x22d.google.com (mail-io0-x22d.google.com. [2607:f8b0:4001:c06::22d])
        by gmr-mx.google.com with ESMTPS id i189si622028iti.0.2017.03.07.06.00.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Mar 2017 06:00:35 -0800 (PST)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2607:f8b0:4001:c06::22d as permitted sender) client-ip=2607:f8b0:4001:c06::22d;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2607:f8b0:4001:c06::22d as permitted sender) smtp.mailfrom=daniel.baluta@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-io0-x22d.google.com with SMTP id l7so3714801ioe.3
        for <outreachy-kernel@googlegroups.com>; Tue, 07 Mar 2017 06:00:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=llQKlFxW0HPcEEyrvlv3Q+3qLANjTingsOFyyH5xQFs=;
        b=Z7oHaiR4CrUjEFErQfS2E23mQjZVA70tqmtwLim8bc2XpFlcEEX8KtlJq011khvnyk
         K0G7+ZOMJ3/r1N9FYpoAyU9ffF1nE4adg7C5BXDVulef682IL5qHWkSOAhS1XI8wH3U9
         DquCncQBdbqOqA2oG/YChNNsAzIuZV31vQAtIKyLTxqrmf+CqtVtdTkZgDISVwv0FmYu
         3h91wO4mMQvvRD/jd4lQdtR2RXuCdkSMm9bDwcqUePMD+xh0L3GQGhYOBcZOcS0D+83X
         cj8oCZ95VwRx5oDUo2D+Ts5LTNbHLFe/eGXErRQ8NpjjgMLIfPAUyzwcxn20T32b33Gv
         ag4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=llQKlFxW0HPcEEyrvlv3Q+3qLANjTingsOFyyH5xQFs=;
        b=eVb+ndQZbGV1tUR+lGKr0/JXRcBeeVscoQ1+i5zvymbE462y9aOFQLR+WoYQIsdycR
         fD9WdYe7SCL4W3zuZLYUms7ovYT3XDcqma5UNUUfWxpgePEUVeYQcBQGydEHW4N6PLwf
         VB0c3jzurxeCjik4NQlIlIFLVqQhvLWgwCNbvsfePjIrVpImJzMmSvHw9wVCraQZHE74
         0Pir3SyIAJxEwMHxcrK0gjP0Pl9s08fckOOhFRcmhAlHuJiSbYXAAGT2eugvznocop6a
         fqR5V/TTTFI6lnFCBv8WvOBcKbQ4FqZFThWHlQmrZkTYzH/yt3u1fPF4NM5KNOX+ODDF
         oNHA==
X-Gm-Message-State: AMke39nuNliVGlSZWGxK/lLxs1cBpj8hfqDusCqUSZEJisMOk6a+pXKG64kPaoi4Gx99urhWSA9501VdgzQyfA==
X-Received: by 10.107.35.129 with SMTP id j123mr826894ioj.195.1488895234392;
 Tue, 07 Mar 2017 06:00:34 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.26.201 with HTTP; Tue, 7 Mar 2017 06:00:33 -0800 (PST)
In-Reply-To: <20170307131650.4318-1-sreyamittal5@gmail.com>
References: <20170307131650.4318-1-sreyamittal5@gmail.com>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Tue, 7 Mar 2017 16:00:33 +0200
Message-ID: <CAEnQRZBX_cZ9gxbxS+rh+o43_O-yWy4_XLcx8vV+CmntZYYRLg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Add braces around if condition
To: Sreya Mittal <sreyamittal5@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, 
	Sudip Mukherjee <sudipm.mukherjee@gmail.com>, Teddy Wang <teddy.wang@siliconmotion.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset=UTF-8

On Tue, Mar 7, 2017 at 3:16 PM, Sreya Mittal <sreyamittal5@gmail.com> wrote:
> Fix the checkpatch issue:
> braces {} should be used on all arms
> of if-else statement.
>
> Signed-off-by: Sreya Mittal <sreyamittal5@gmail.com>

Please add tags to your commit subject. In order to find
which tags to use for a certain file you can use git log <file.c>
and see what tags were used for previous commits.

E.g for this patch the tag used by previous patches is "staging: sm750fb:"
so the commit subject should be:

staging: sm750fb: Add braces around if condition

thanks,
Daniel.

