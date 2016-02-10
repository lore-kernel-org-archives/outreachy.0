X-GM-THRID: 6249445155877683200
X-Received: by 10.107.152.10 with SMTP id a10mr38898076ioe.28.1455084905843;
        Tue, 09 Feb 2016 22:15:05 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.101.164 with SMTP id u33ls161888qge.82.gmail; Tue, 09 Feb
 2016 22:15:05 -0800 (PST)
X-Received: by 10.129.155.201 with SMTP id s192mr36865870ywg.4.1455084905321;
        Tue, 09 Feb 2016 22:15:05 -0800 (PST)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from mail-pf0-x22e.google.com (mail-pf0-x22e.google.com. [2607:f8b0:400e:c00::22e])
        by gmr-mx.google.com with ESMTPS id ff2si178308pad.2.2016.02.09.22.15.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2016 22:15:05 -0800 (PST)
Received-SPF: pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c00::22e as permitted sender) client-ip=2607:f8b0:400e:c00::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c00::22e as permitted sender) smtp.mailfrom=sudipm.mukherjee@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22e.google.com with SMTP id q63so6807021pfb.0
        for <outreachy-kernel@googlegroups.com>; Tue, 09 Feb 2016 22:15:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=zonq0PkhDeG1DgiLU++AHq/R/x88AgRKCrajE+OfLDo=;
        b=oHCp2TNpoJaWfVz6h+gvqW4TKu5ytxDKHU0GQcqmJxUtwmINvftVRrqke3GowUF9Er
         x+QdIfp0yreDC4kormuLxhT74FM6EYtG8oiMxhhEdfb3EsX4SaDUAzfuN8hDeuY8RnCf
         +oeeNY4sW+HO2RdgcthfYmgWsBqKOWIeuv/cUD4qKCAd8/VbgyGWAJiLZ8Lijphb/icT
         31vlGf8nkGuqBX6F7mjEnT8tWNYLT8zKApEri3fv8pCmwXJD/UAK3JR/e4KLZ/GFlW9r
         w3FBUjluyQVSbG/srSTvVhsvBXYdNqBySQ0JfNV7ODOd6mPD9HfnvvbKW3UjKvpPa5Nl
         ZVrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-type:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent;
        bh=zonq0PkhDeG1DgiLU++AHq/R/x88AgRKCrajE+OfLDo=;
        b=hB0FXN/uxDE9No5KM8hjBChxnfBusV+IPuvoahWFyqGlu0bem1Umpua7cYnIbwQ9JL
         BdWXGzFaBVBX8ACBTmCuOFwNpmNvZLRZcGIpsLe4Gb7nxtUyPRVa8b7LeXin4/acfHNI
         pgNeAdUqxiJIyDVQ++zyUU3fXRDnbDeTbzayYNWpF3IEXJ+/jRizWLD3jQclDWW/wS1y
         rVcL8P5ESwKoi36ui8/pB+TAL+EVABMCq/Svql4wVguACi8POlEqZsPfVHI3xPVdjSvg
         CZ+/EjPxpjG0FjoIigmtCGsbUsTrRWHaTRUQJW/3aS8+8z5tdAQiQYwH5VJY/7UAif5T
         sKfg==
X-Gm-Message-State: AG10YORQBQ8/1NdlZVj+XwzDkONSWIrNo53UsuZ2rNOqFYrbuyo0RG2J4TynEx58cdF2kA==
X-Received: by 10.98.18.207 with SMTP id 76mr55137522pfs.53.1455084905164;
        Tue, 09 Feb 2016 22:15:05 -0800 (PST)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from sudip-pc ([183.82.227.168])
        by smtp.gmail.com with ESMTPSA id h66sm1995375pfd.91.2016.02.09.22.15.02
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Tue, 09 Feb 2016 22:15:04 -0800 (PST)
Date: Wed, 10 Feb 2016 11:44:55 +0530
From: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
To: Rakhi Sharma <rakhish1994@gmail.com>
Cc: outreachy-kernel@googlegroups.com, Julia.Lawall@lip6.fr,
	daniel.baluta@gmail.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH] drivers: staging: lustre: lustre:
 lov: lov_pool: Fixed a warning
Message-ID: <20160210061455.GA374@sudip-pc>
References: <1455062326-20870-1-git-send-email-rakhish1994@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1455062326-20870-1-git-send-email-rakhish1994@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Wed, Feb 10, 2016 at 05:28:46AM +0530, Rakhi Sharma wrote:
> Fixed a checkpatch warning.
> WARNING: struct file_operations should normally be const
> 
> Signed-off-by: Rakhi Sharma <rakhish1994@gmail.com>
> ---

It now adds new build warning:

../drivers/staging/lustre/lustre/lov/lov_pool.c: In function ‘lov_pool_new’:
../drivers/staging/lustre/lustre/lov/lov_pool.c:438:7: warning: passing argument 4 of ‘ldebugfs_add_simple’ discards ‘const’ qualifier from pointer target type [enabled by default]
       &pool_proc_operations);
       ^
In file included from ../drivers/staging/lustre/lustre/lov/../include/linux/../obd_support.h:43:0,
                 from ../drivers/staging/lustre/lustre/lov/../include/linux/obd.h:44,
                 from ../drivers/staging/lustre/lustre/lov/../include/obd.h:40,
                 from ../drivers/staging/lustre/lustre/lov/lov_pool.c:49:
../drivers/staging/lustre/lustre/lov/../include/linux/../lprocfs_status.h:547:16: note: expected ‘struct file_operations *’ but argument is of type ‘const struct file_operations *’
 struct dentry *ldebugfs_add_simple(struct dentry *root,

regards
sudip


