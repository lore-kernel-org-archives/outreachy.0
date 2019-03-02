X-GM-THRID: 6663599523023028224
X-Received: by 2002:a25:48b:: with SMTP id 133mr4153483ybe.91.1551513113815;
        Fri, 01 Mar 2019 23:51:53 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:e6cd:: with SMTP id d196ls178010ybh.9.gmail; Fri, 01 Mar
 2019 23:51:52 -0800 (PST)
X-Google-Smtp-Source: APXvYqztdfnr/PJdg/gRn6AFLQIOiHWQnYjneM7eo4ARyWgwhtt7bEp9kmKAa3SwA1vDA+FAUyVR
X-Received: by 2002:a25:8582:: with SMTP id x2mr4312276ybk.29.1551513112871;
        Fri, 01 Mar 2019 23:51:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551513112; cv=none;
        d=google.com; s=arc-20160816;
        b=VoAGClpltqZ29YyF6J2PRkoId6Xkn+vwp9lLdekGtqAh7/KzDf32362OedIXmobZEG
         YqidBqYw+Zvu/H1dwiOoey7CN5Ac4zoT6c59U2tzfV8tU9Aj4ZGX/JTeImYwWIPXOcF7
         4woEVvWcqctnMymTruSkKjGLHV4b1nEi51d6B/kbqc+ss4Z5hAkXsxqhUA37dL9oQ02v
         s7irkhAB3Zj3ckLJrLzr10n5kA3+jC/byzKpQNjUp38NpcdhUyx1ODA+jTfXa0T1Ewa5
         dobXI4YyZZpYJZ40cV/Q75nxb7b5JIKhHu6MMUlXk4i6qvkXJrPk9K81m6n2ievzag7P
         GxGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=ySOD5S8H2zFpgVY2mpjoqANdsfU0QSJn18J/3upJ3/c=;
        b=0sBBRaYAZTEgrQuNcJgIiR+gaG0RnmPrQkRiGTlGEYhPFk1MJ1zn7S+ehyJOgTQ4Hb
         662zTQcPp33fpRtnR3JUNyhvOrHRU7L9oY7Crg4PY3bP1VSiZGtAJ5TYDlZSVFLk4Knd
         gCOMah3aJBzUsj8VQ928G+iK0oefga2m0OZ8yCKjEdDU/XdYzorCMcE47VQV4V5BCLh/
         0nVxYFJarKBJyvX3cq5GeKeA0bmYbtZFXtTTyuMGEzgTCFyy+J57SLT4jxjDOafxt8PC
         vhG2dJtgFM0DFZWJJbxJyTNipEa/TIrhap7PuU/FcMCB8VatTw07ovcs+TQhgGFX4akC
         RG1w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=yElGvVv0;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id z185si10705ywa.3.2019.03.01.23.51.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 01 Mar 2019 23:51:52 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=yElGvVv0;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 381F82083D;
	Sat,  2 Mar 2019 07:51:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1551513111;
	bh=qh1spXDKerFnNNxGuB5wQfXPiKD6tpy7uyCZjaqNo+M=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=yElGvVv0F9zk7GYlfkKXvI+MujBbNKAgbymyyI+rejYAyyh09aezrYjLrASHej1QP
	 8KDwA+4LrfPK+hgGhqY7nCRvR92jvcOXKcAU9PhKwFsrQsSJuJ30pxNM1etEOMQFC4
	 TokBGdDzeCDizqAuejIzT2mS9OG5os9rzNcpLFVw=
Date: Sat, 2 Mar 2019 08:51:49 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Cc: forest@alittletooquiet.net, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v3 0/2] Fix comment style of SPDX License Identifier
Message-ID: <20190302075149.GA17627@kroah.com>
References: <cover.1551489576.git.madhumithabiw@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1551489576.git.madhumithabiw@gmail.com>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Fri, Mar 01, 2019 at 07:29:09PM -0600, Madhumitha Prabakaran wrote:
> This patchset fixes the comment styles of SPDX-License Identifier based
> on License Identifier syntax.
> 
> Madhumitha Prabakaran (2):
>   Staging: vt6655: channel.h: Fix comment style of SPDX License Identifier
>   Staging: vt6655: desc.h: Fix comment style of SPDX License Identifier

Again, this does not match up with the subject lines of the patches you
sent out :(


