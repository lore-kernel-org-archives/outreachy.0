X-GM-THRID: 6792282494518427648
X-Received: by 2002:a62:36c2:: with SMTP id d185mr8346308pfa.203.1581506367101;
        Wed, 12 Feb 2020 03:19:27 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:7a47:: with SMTP id v68ls7178625pfc.8.gmail; Wed, 12 Feb
 2020 03:19:25 -0800 (PST)
X-Google-Smtp-Source: APXvYqzTjXGrCScnmYYI3NOR3ZI7pEonLpO9XXA3FOPLgpXuHDrMMx1rq+bYaM8uAkCUaUTG1cNH
X-Received: by 2002:a63:4b49:: with SMTP id k9mr11978605pgl.269.1581506365267;
        Wed, 12 Feb 2020 03:19:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581506365; cv=none;
        d=google.com; s=arc-20160816;
        b=Z4zHua4Lt80c6/z02yW1BGcTU53/f7KCiKX0Lz9mfKqHPrCBSv4vyFCiEGpAUH6t2a
         WtBQBQkKIHTNX1UR9X0Wl5g6sSlNLBTDGM/zK3apTtO7YSyOf/zDQekFVWZgK00c23W7
         sBsPCoHB8cMTMdldsyPxmZB3ioqX14K8b980HNnUCOL8HO94PPAQpMceXuXHS+nzwaWi
         xtxrmrXBemnJBXIGTHMAaE1Kg69xPJHPcxw2kWsY1Gb8AbedzHcVxmuOITWQ4ZKotXTE
         rLtpjth6Tcb6JnydbUC9nmSnO7a9WpfLc+Vba6BsEC3J0L6TaUIJ33mxJkXpFe+YVaSm
         14ig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=Vt7aFdvwnKbQALO+VNFUlwDfDh4upJia92vtO/eLh1k=;
        b=JZZrAq+8RjU9lpx+oJHH+0f+dF78jhkW0ryyjGIDmEWhZkV5zraDgUz3zjqcTHs3wx
         2BSvpgCqJ0HxDPQk1n/NW+EvWyUDS8buWZVxuFzNnyYlnaeUpmkdts4A5hPS7ZNsRtg1
         +4qccseappFlD+SoKTKbtE6q/bzYOd0Varx9nNer5y3uhkOtYHfwCI+P2an7hFoAwQbd
         E19yujJzBg6ONaHbq3lO4dHS4WyxWMPDHZHYd9mMQbl/4fmkmuUSw4HsE+H8obzY2ZbT
         95+L58X5VfUJtSu9QSuQf5P1eRsk2s1Istu8x3YKc648aerJPBSUWuo9YN+c896MbNpM
         tK0w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar@vaishalithakkar.in designates 68.178.252.107 as permitted sender) smtp.mailfrom=vthakkar@vaishalithakkar.in
Return-Path: <vthakkar@vaishalithakkar.in>
Received: from p3plsmtpa11-06.prod.phx3.secureserver.net (p3plsmtpa11-06.prod.phx3.secureserver.net. [68.178.252.107])
        by gmr-mx.google.com with ESMTPS id t34si191266pjb.3.2020.02.12.03.19.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 12 Feb 2020 03:19:25 -0800 (PST)
Received-SPF: pass (google.com: domain of vthakkar@vaishalithakkar.in designates 68.178.252.107 as permitted sender) client-ip=68.178.252.107;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar@vaishalithakkar.in designates 68.178.252.107 as permitted sender) smtp.mailfrom=vthakkar@vaishalithakkar.in
Received: from mail-lf1-f43.google.com ([209.85.167.43])
	by :SMTPAUTH: with ESMTPSA
	id 1q39jpTCRZZK21q3Aj70Zb; Wed, 12 Feb 2020 04:19:24 -0700
X-CMAE-Analysis: v=2.3 cv=UqwdyN4B c=1 sm=1 tr=0
 a=V3SKbpRzU9DxzSgA2GKAQg==:117 a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19
 a=IkcTkHD0fZMA:10 a=MKtGQD3n3ToA:10 a=l697ptgUJYAA:10 a=pFd2Zl5z2vwA:10
 a=ZZnuYtJkoWoA:10 a=4RBUngkUAAAA:8 a=1XWaLZrsAAAA:8 a=AFfvQUj85srtwFEc7eAA:9
 a=a-Vih_De2PIFV8kF:21 a=g9kdK_qqP1oS2tb1:21 a=QEXdDO2ut3YA:10
 a=cDyXFGGuxjcA:10 a=_sbA2Q-Kp09kWB8D3iXc:22
X-SECURESERVER-ACCT: vthakkar@vaishalithakkar.in
Received: by mail-lf1-f43.google.com with SMTP id 203so1294027lfa.12
        for <outreachy-kernel@googlegroups.com>; Wed, 12 Feb 2020 03:19:24 -0800 (PST)
X-Gm-Message-State: APjAAAWI9P0F8VPlBkrD9dkqJ9ZrmjFhZnklXS7DQqDDt6Ab8dzDrJSo
	4e3g+KVRJFL3S8Zjyk/Y1in14gQZioz/fcO/c4I=
X-Received: by 2002:ac2:489b:: with SMTP id x27mr6290734lfc.130.1581506363414;
 Wed, 12 Feb 2020 03:19:23 -0800 (PST)
MIME-Version: 1.0
References: <20200211200456.GA10351@kaaira-HP-Pavilion-Notebook>
In-Reply-To: <20200211200456.GA10351@kaaira-HP-Pavilion-Notebook>
From: Vaishali Thakkar <vthakkar@vaishalithakkar.in>
Date: Wed, 12 Feb 2020 16:49:11 +0530
X-Gmail-Original-Message-ID: <CAK-LDbJ58HiNU2Qc-3cAsS=SMT7zv-dQTg5wWRTKftDjjtCGbA@mail.gmail.com>
Message-ID: <CAK-LDbJ58HiNU2Qc-3cAsS=SMT7zv-dQTg5wWRTKftDjjtCGbA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging:Fix WARNING: quoted string
 split across lines
To: Kaaira Gupta <kgupta@es.iitr.ac.in>
Cc: Rob Springer <rspringer@google.com>, Todd Poynor <toddpoynor@google.com>, 
	Ben Chan <benchan@chromium.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Outreachy <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-CMAE-Envelope: MS4wfJ6d6gmJjBAzY/xAa9PorWEpo7mwZ9EhBSSWIJdWOlun0UKwhNiwmByHJcuf2vLphGEB9d5hKHxZUs7gV0/HR15r9chG0blasd39tjcZS30lZm/TklBw
 bqVD523tlJYytrzqxUvQSO+eF5nAtPvT2PX51FltORiWo56BGxJMOpD22bOLaxeWvgXDXMQA6co565WiIFmXk++95ofwm94GFhI=

On Wed, Feb 12, 2020 at 1:35 AM Kaaira Gupta <kgupta@es.iitr.ac.in> wrote:
>
> Whenever it tries to map a region, but the region has permissions, or it attempts to open gasket with tgid, or it releases device node the messages are displayed in one line only, respectively.
> And it becomes confusing for the developer to search for the code based on these lines' output since they are written in separate lines in the code.
> So, this patch fixes this 'WARNING: quoted string split across lines'
> in three lines in the file gasket_core.c.

Hi Kaaira,

Thanks for your first patch. Although the contribution period
for the next round of Outreachy has not yet started. So, we
won't be moderating this mailing list and Greg won't be picking
up patches from this mailing list. We will send a welcome
email on March 5, 2020 when the contribution period will
open.

Till then feel free to use get_maintainer.pl and send
patches to the appropriate people/mailing lists.

Thank you!

> Signed-off-by: Kaaira Gupta <kgupta@es.iitr.ac.in>
> ---
>  drivers/staging/gasket/gasket_core.c | 9 +++------
>  1 file changed, 3 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/staging/gasket/gasket_core.c b/drivers/staging/gasket/gasket_core.c
> index cd8be80d2076..411aaf248b37 100644
> --- a/drivers/staging/gasket/gasket_core.c
> +++ b/drivers/staging/gasket/gasket_core.c
> @@ -692,8 +692,7 @@ static bool gasket_mmap_has_permissions(struct gasket_dev *gasket_dev,
>                 (vma->vm_flags & (VM_WRITE | VM_READ | VM_EXEC));
>         if (requested_permissions & ~(bar_permissions)) {
>                 dev_dbg(gasket_dev->dev,
> -                       "Attempting to map a region with requested permissions "
> -                       "0x%x, but region has permissions 0x%x.\n",
> +                       "Attempting to map a region with requested permissions 0x%x, but region has permissions 0x%x.\n",
>                         requested_permissions, bar_permissions);
>                 return false;
>         }
> @@ -1180,8 +1179,7 @@ static int gasket_open(struct inode *inode, struct file *filp)
>         inode->i_size = 0;
>
>         dev_dbg(gasket_dev->dev,
> -               "Attempting to open with tgid %u (%s) (f_mode: 0%03o, "
> -               "fmode_write: %d is_root: %u)\n",
> +               "Attempting to open with tgid %u (%s) (f_mode: 0%03o, fmode_write: %d is_root: %u)\n",
>                 current->tgid, task_name, filp->f_mode,
>                 (filp->f_mode & FMODE_WRITE), is_root);
>
> @@ -1258,8 +1256,7 @@ static int gasket_release(struct inode *inode, struct file *file)
>         mutex_lock(&gasket_dev->mutex);
>
>         dev_dbg(gasket_dev->dev,
> -               "Releasing device node. Call origin: tgid %u (%s) "
> -               "(f_mode: 0%03o, fmode_write: %d, is_root: %u)\n",
> +               "Releasing device node. Call origin: tgid %u (%s) (f_mode: 0%03o, fmode_write: %d, is_root: %u)\n",
>                 current->tgid, task_name, file->f_mode,
>                 (file->f_mode & FMODE_WRITE), is_root);
>         dev_dbg(gasket_dev->dev, "Current open count (owning tgid %u): %d\n",
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20200211200456.GA10351%40kaaira-HP-Pavilion-Notebook.

