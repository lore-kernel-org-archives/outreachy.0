X-GM-THRID: 9431071850496
X-Received: by 10.66.100.198 with SMTP id fa6mr1815947pab.31.1427152890738;
        Mon, 23 Mar 2015 16:21:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.10.163 with SMTP id 35ls2073602iok.43.gmail; Mon, 23 Mar
 2015 16:21:30 -0700 (PDT)
X-Received: by 10.66.237.140 with SMTP id vc12mr1902352pac.44.1427152890534;
        Mon, 23 Mar 2015 16:21:30 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id oc12si280040pdb.1.2015.03.23.16.21.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Mar 2015 16:21:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (gob75-2-82-67-192-59.fbx.proxad.net [82.67.192.59])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 9A043A79;
	Mon, 23 Mar 2015 23:21:29 +0000 (UTC)
Date: Mon, 23 Mar 2015 22:27:07 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] sm750fb: Fix indentation, spacing and
 switch-case
Message-ID: <20150323212707.GB23414@kroah.com>
References: <20150321171818.GA27148@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150321171818.GA27148@amitoj-Inspiron-3542>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Sat, Mar 21, 2015 at 10:48:18PM +0530, Amitoj Kaur Chawla wrote:
> Fix the spacing problems with correct indentation and correct use of
> braces and spacing in switch-case statements.
> 
> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
> ---
>  drivers/staging/sm750fb/ddk750_chip.c | 63 +++++++++++++++++------------------
>  1 file changed, 31 insertions(+), 32 deletions(-)

Again, multiple things at once :(

