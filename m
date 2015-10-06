X-GM-THRID: 6202249828233117696
X-Received: by 10.129.78.205 with SMTP id c196mr15527984ywb.21.1444106272456;
        Mon, 05 Oct 2015 21:37:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.98.33 with SMTP id ef1ls1471398igb.5.canary; Mon, 05 Oct
 2015 21:37:52 -0700 (PDT)
X-Received: by 10.107.165.5 with SMTP id o5mr30038092ioe.5.1444106272246;
        Mon, 05 Oct 2015 21:37:52 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from mail-pa0-x22f.google.com (mail-pa0-x22f.google.com. [2607:f8b0:400e:c03::22f])
        by gmr-mx.google.com with ESMTPS id wl2si4036346pab.1.2015.10.05.21.37.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Oct 2015 21:37:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) client-ip=2607:f8b0:400e:c03::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) smtp.mailfrom=sudipm.mukherjee@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22f.google.com with SMTP id lk4so196699786pab.3
        for <outreachy-kernel@googlegroups.com>; Mon, 05 Oct 2015 21:37:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=IJrVKNShxWRVSSNJPEz+IaUPUVPoAmc/7k4Zn0ZYmTA=;
        b=upLsTJAVy9SR9c7plOyyQlk+PiDi4uuKt/T0JzLhrwOFSTMTH3V3mrGr9HdnnxG1jH
         2VXY7guXCyXDOpUXCIywzhJKWWmZo5SP2tg6vEdLF5YTvzhfWj5ccd9aB8O1nb/UJa3k
         o1Z+TwnDXaLvvjkDi9IjLQIBllFTiPtXYLa1bLM8wVQGuALgHjP8Gp2eq/sEslB9AhSi
         NYjlauHXLMeekVYYW/PWemTlUKJACDgsxHdgiL/+rSONJjtutwhJoNytsxQGAIBuiBsF
         hlmruF3PW2i4LZEg/danvuYXWcO/U6oEY40ESw0EWiUD0CCE/PAmePwVkiGhQwG4q/eC
         m+Iw==
X-Received: by 10.68.195.3 with SMTP id ia3mr44072264pbc.106.1444106272090;
        Mon, 05 Oct 2015 21:37:52 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from sudip-pc ([49.206.251.3])
        by smtp.gmail.com with ESMTPSA id rw8sm30739625pac.11.2015.10.05.21.37.50
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Mon, 05 Oct 2015 21:37:51 -0700 (PDT)
Date: Tue, 6 Oct 2015 10:07:46 +0530
From: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
To: Hatice =?iso-8859-1?Q?ERT=DCRK?= <haticeerturk27@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: lustre: lnet: klnds:
 socklnd: Fixed comment style warnings
Message-ID: <20151006043746.GC4745@sudip-pc>
References: <1444073814-10274-1-git-send-email-haticeerturk27@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1444073814-10274-1-git-send-email-haticeerturk27@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Mon, Oct 05, 2015 at 10:36:54PM +0300, Hatice ERT�RK wrote:
> Fixed 'Block comments use a trailing */ on a separate line' and 'Block comments use * on subsequent lines' checkpatch warnings
> 
> Signed-off-by: Hatice ERT�RK <haticeerturk27@gmail.com>
> ---

1) your patch is having trailing whitespaces.
2) Please wrap your commit message at 75 char length. I had to go and
check the exact count :)
3) Just before this patch there was another patch with same subject but
marked as 4/4. That becomes confusing.

regards
sudip

