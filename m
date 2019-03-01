X-GM-THRID: 6663223880955461632
X-Received: by 2002:a9d:7654:: with SMTP id o20mr2031667otl.70.1551427075984;
        Thu, 28 Feb 2019 23:57:55 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:4541:: with SMTP id s62ls3451851oia.7.gmail; Thu, 28 Feb
 2019 23:57:55 -0800 (PST)
X-Google-Smtp-Source: AHgI3IZzQ/CXg+pvCVDXWZ+AgQ8o+tzWtCBlohFEXt3fzUzQTQUJE5k0DBtEJQrjburFchTcGNKM
X-Received: by 2002:aca:ecd7:: with SMTP id k206mr2202047oih.22.1551427075209;
        Thu, 28 Feb 2019 23:57:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551427075; cv=none;
        d=google.com; s=arc-20160816;
        b=KatUuSBKcLntgpYqoR1MD+yIggrZ2NaaF2P8xeNoNG7nm21DolpQRRQtxQY8WsxxmF
         EeVDBuW0yILqXlEoAu6eZ1eSQluKBbYi+scNL5TXPZnVg63Ct0yseAeyCQK8elXwI1p1
         AMcx/lwNfdWLLwcUhX7rQX3yPDEKAyQQCrtGm1MqIdmKW1jkgm72Qw1SC1zH6XthrvQl
         e/YiYTVnN2QtEyOEOiGKfmWDx7msWnPE5Xx/Tw3zXtWX01r3m79eVB51QbvI5qHrd3/h
         XqK7tdMK7SMjVMLHnOQAXNMGOFp+1kXqpxfD8fprzQ4nlZjEC2QnE3G3mGD8iqDSRRe9
         HXXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=aPtEa2aJ/StQAxLSihSmNa2RVUNMnQ9xXJDQRe5SQ/M=;
        b=Fjb+ma34OddOtQFcCmxdmBqFUi/KMqRwvnmhv7ONQYBOQLH9BIuWX1nvjDykxPugtT
         o8cnLuyQCPmpgHRkGkjdp93YPaYjLrPCPvzi4VFqo5i7rKhAZTEn5TvN3SaFc4E08wGD
         bhXOhubs/Y6FOFXgYLJtlVeBNABmtABW/whTkNHl/F2Su8Y3VfgzliX3DPY95QqzNtXt
         Yp/JMhoIVNxbalzdsIduOZN5xtF/mfaW+ZL+Aqjwzi4cGOyj31T+QW3bnscaIhz4LYIZ
         rsnZQ2sPRUHm4OcBtX7rEg/YkvBgL39s6/oS/KiRowZhwbXwk7shCRzkOsB5Fm3HHOeM
         uNEw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=JSlvWhjX;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id q206si844955oic.2.2019.02.28.23.57.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Feb 2019 23:57:55 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=JSlvWhjX;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id DBFAF20838;
	Fri,  1 Mar 2019 07:57:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1551427074;
	bh=qd4pLqThNLmPSd2vxTzTNI0dVd4X86gPc4SMILwQqtM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=JSlvWhjX1bhPDx8v9jV+dNIcjPdhNkl8pBDsPn4JZZoOPIoFETyK8kSEovhQaELJt
	 qbpgMKQtHSUwV5Yq8RvlWaWRU3w4v3rPVY+riUrQqd8/ylICKJiIEqOuUzfeTFNky6
	 HDHuRE55QMbOWF0YzdPzc3Ko8bpaLPFxzShuFTe4=
Date: Fri, 1 Mar 2019 08:57:51 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Cc: forest@alittletooquiet.net, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH 0/2] Staging: vt6655: Fix comment style of SPDX-License
Message-ID: <20190301075751.GA13643@kroah.com>
References: <cover.1551402120.git.madhumithabiw@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1551402120.git.madhumithabiw@gmail.com>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Thu, Feb 28, 2019 at 07:11:37PM -0600, Madhumitha Prabakaran wrote:
> Cc: forest@alittletooquiet.net, gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
> 
> This patchset fixes the comment styles of SPDX-License Identifier based
> on License Identifier syntax.
> 
> Madhumitha Prabakaran (2):
>   Staging: vt6655: Modify comment style of SPDX License Identifier
>   Staging: vt6655: Fix comment style of SPDX License Identifier

You really are doing the same thing to two different files, so this
could be:

  Staging: vt6655: channel.h: Fix comment style of SPDX License Identifier
  Staging: vt6655: desc.h: Fix comment style of SPDX License Identifier

right?  That makes it more obvious what is going on here, and you don't
have to "reword" the subject lines to be different in tiny ways.

Also, this is a v2 series, right?  Please make it v3 next time you
resend it.

thanks,

greg k-h

