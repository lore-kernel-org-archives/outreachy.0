X-GM-THRID: 6250666971081211904
X-Received: by 10.140.173.215 with SMTP id t206mr5540650qht.13.1455350842946;
        Sat, 13 Feb 2016 00:07:22 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.130.229 with SMTP id oh5ls1104659obb.74.gmail; Sat, 13 Feb
 2016 00:07:22 -0800 (PST)
X-Received: by 10.182.148.71 with SMTP id tq7mr5338898obb.21.1455350842668;
        Sat, 13 Feb 2016 00:07:22 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-qg0-x244.google.com (mail-qg0-x244.google.com. [2607:f8b0:400d:c04::244])
        by gmr-mx.google.com with ESMTPS id t198si1370321ywe.3.2016.02.13.00.07.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 13 Feb 2016 00:07:22 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::244 as permitted sender) client-ip=2607:f8b0:400d:c04::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::244 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x244.google.com with SMTP id b35so6978766qge.2
        for <outreachy-kernel@googlegroups.com>; Sat, 13 Feb 2016 00:07:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=46GrxZ5UN0yVzyP93OfaS4YozBK1az/hZt8N9uqorGk=;
        b=uEqB5Z3kFSET/ELDlo5lstnELjC0KoCZeQku/au7Ya4dYlHrxRAsqRVPrkjeCBIoUm
         5yZQ7tbZ+4NDA0pzIsivfB7cHt7AmqoRSVg/XQhpCfp//AI6SauvRArWmBzX1b+iKTGS
         cHAuV53bFy1yAg0MNZdED8Y+SW4EvDilT65P10z3jaKZRkV/tqgiArUOuoF6hsXp65wv
         MWCq+d8CHrU/nFuKObRWQIi0UAMZtyPcEYHeY+uNulK9nrtsdhcG+WdIOpqobujBwsHe
         M17MxzYKMbO+WOd/R3pPM6jRNeMhRK9i5rAqb1gBfKUH2WR7QilISe4BR8vhpRB79nVu
         YGdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc:content-type;
        bh=46GrxZ5UN0yVzyP93OfaS4YozBK1az/hZt8N9uqorGk=;
        b=LSQzLDKBBva8PIV5Flg8nFVjUOtzfF4kcuPfIJRbmqAY0YEi6CSS425kuyZ60IS3t7
         ZrXaZQBVGFxLoAyIU714m7aC5qKWn3I24GJKDdWzNmMEhc2cRxzHNy9PSaXINTcqMysP
         YGF3jgBdbx9MkATPEezO9dFUdMZ6uw9/G3S8Hw7MoK9slDkk9ResFBdNFvpR93D2jshA
         GXcIP5EC/20U0Uk0QJj2GqTSSaPknYSawSILcKeeYofG9F9aWt/vi+uSFazJYadcEghF
         /9rq4sHrP23GqOTtlR2Q6lHNJ2miG6Qcn33ZfP90YDRZ57JBIOiAZKUy0P6cob1ms+4K
         OZYg==
X-Gm-Message-State: AG10YORpadvfRmL2f+oDz/dO935T8czIm9l50oKeDn0n08dEaSx+zETjvX1Oh84sKPazqFyxyeB0xefUOF8jwA==
MIME-Version: 1.0
X-Received: by 10.140.233.85 with SMTP id e82mr7366703qhc.86.1455350842450;
 Sat, 13 Feb 2016 00:07:22 -0800 (PST)
Received: by 10.140.44.99 with HTTP; Sat, 13 Feb 2016 00:07:22 -0800 (PST)
In-Reply-To: <CAK-LDbKkUTk8g_SX4edTWJoDq6EEq+tQg+kYCteYXHnP3AUWAw@mail.gmail.com>
References: <20160213070010.GA21006@amitoj-Inspiron-3542>
	<CAK-LDbKkUTk8g_SX4edTWJoDq6EEq+tQg+kYCteYXHnP3AUWAw@mail.gmail.com>
Date: Sat, 13 Feb 2016 13:37:22 +0530
Message-ID: <CA+5yK5GkyTe9htK3n+xUOfyg2q-ESd3Pqc=vP0DrGYGsSP9oPQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 0/2] staging: rtl8192u: ieee80211:
 Remove msleep_interruptible_rsl MACRO and its single instance
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: Vaishali Thakkar <vthakkar1994@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Sat, Feb 13, 2016 at 1:34 PM, Vaishali Thakkar
<vthakkar1994@gmail.com> wrote:
>
> Good catch!
>
Credit goes to Julia :)
> You can also check if other network drivers have similar driver specific macros.
> And if so, you can go for them as well.
>

Yes, will try searching for more such macros.

Thanks for the advice,

Amitoj

