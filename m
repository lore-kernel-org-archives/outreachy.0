X-GM-THRID: 6203759305105080320
X-Received: by 10.66.221.7 with SMTP id qa7mr14671234pac.33.1444467441392;
        Sat, 10 Oct 2015 01:57:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.164.165 with SMTP id d37ls1078268ioj.39.gmail; Sat, 10 Oct
 2015 01:57:21 -0700 (PDT)
X-Received: by 10.50.82.98 with SMTP id h2mr3201227igy.1.1444467441035;
        Sat, 10 Oct 2015 01:57:21 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-qg0-x22d.google.com (mail-qg0-x22d.google.com. [2607:f8b0:400d:c04::22d])
        by gmr-mx.google.com with ESMTPS id q68si436268ywf.0.2015.10.10.01.57.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 10 Oct 2015 01:57:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::22d as permitted sender) client-ip=2607:f8b0:400d:c04::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::22d as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-qg0-x22d.google.com with SMTP id z77so87879559qge.1
        for <outreachy-kernel@googlegroups.com>; Sat, 10 Oct 2015 01:57:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=7H3fMDX51bKk2TbDN8ecNNiDn1kQtXsMF6RbMirM6LA=;
        b=yir4aSX0y2x1TAmVSjMCmmkxlVZj78dzqsJNlPl8VI29dC4nI+a1iqYl0+Y1LZOQ9Y
         /1MsuPHSufIBiMnceQJVmg/RhWCpsFfR9NwGaDYLeZMZnmnb8qEW+358FHJPik4JDBdx
         lH6Ez346O+N3THd0t6shkcTGjVlfVF9bUj5gDzuZ4mJr1MBityHxEbMZGUe9wKpKeW2U
         FKFNfk0mdCUA9kW0N0/WgI/kBfgTePKDNQq1f3S8+2+uLhRNsoTKO8CTAWT9vw17bClW
         2a4hSH9y4NiQi8pNyoGzEtjra308ZpMF23N07QmiEP7yf2FI7xuhFyszW6DgQydoTZx7
         oFEw==
MIME-Version: 1.0
X-Received: by 10.140.96.135 with SMTP id k7mr20794301qge.34.1444467440828;
 Sat, 10 Oct 2015 01:57:20 -0700 (PDT)
Received: by 10.140.21.38 with HTTP; Sat, 10 Oct 2015 01:57:20 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.02.1510101003400.2062@localhost6.localdomain6>
References: <20151010075341.GA31673@amitoj-Inspiron-3542>
	<alpine.DEB.2.02.1510101003400.2062@localhost6.localdomain6>
Date: Sat, 10 Oct 2015 14:27:20 +0530
Message-ID: <CA+5yK5Fh+WH3bCCZ=9i_y-VDw9dR9ZLCgPf7ZK0c+-U37EMpgg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v3] staging: rtl8712: Replace
 GFP_ATOMIC with GFP_KERNEL
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Sat, Oct 10, 2015 at 1:34 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> On Sat, 10 Oct 2015, Amitoj Kaur Chawla wrote:
>
>> Replace GFP_ATOMIC with GFP_KERNEL since GFP_ATOMIC is called in
>> atomic context and only needed when functions are not allowed to sleep
>> whereas the function is later calling msleep().
>
> Is the commit message changed?  It still says that GFP_ATOMIC is called,
> which it is not.

 I did change it but I left out that part. Sorry my bad.

Amitoj

