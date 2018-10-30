X-GM-THRID: 6618081072101982208
X-Received: by 2002:ab0:138e:: with SMTP id m14mr16078595uae.1.1540892075849;
        Tue, 30 Oct 2018 02:34:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ab0:70c5:: with SMTP id r5ls1249296ual.3.gmail; Tue, 30 Oct
 2018 02:34:35 -0700 (PDT)
X-Google-Smtp-Source: AJdET5cOSJpgqjyJAm5wtbvftvTORJhzJwjNTu/zcKGzWuSzIPsep2GXeb1WmeC3OkHCgM76Mwe9
X-Received: by 2002:ab0:e03:: with SMTP id g3mr16082589uak.4.1540892075166;
        Tue, 30 Oct 2018 02:34:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540892075; cv=none;
        d=google.com; s=arc-20160816;
        b=EU8F+1svivhQ25eimw6cEqt00ytjcWTulcioVoeFAi8zSdkk6R2TbfnQ6+AyGPDubH
         iNDt/C3tkNMEJJSnWFXRXbTHytFpZmtdI/bq5i8g15MndYNiXE/VJ3SctZ3suQiwKeEH
         yXn4glIHoNMDmheVq7T2u866NmZFr4vYGwzuhYVLrMOdaNVRzsl+s/UEXdmCS0Nxy6sg
         Wqar4H3EtjDWtGwBuU3x2eg3iIM9zwLOc7F3LG4wN/3NtcMxLO7+cwlfV2AEDJlhaRbu
         gr9XTYfmPmV/Z9niiWsCh15/xdZzjrw73yP9bNYB7Ht0/t6lNR5e7psgM0uWIy1Vz3G3
         MtTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature;
        bh=Da0YMPCvRpidwwze0/iQNL3fOyGRazAoPdOU8u+uP/A=;
        b=zdIcmb1ogxnsUScExHYRhaS2pL5/KdXyQseJVlLEDWxilES8R2eAWJIEbsWjxzt6uG
         fOof8twskoDcYiuzhdT++ClFLaizRrxe8vBnN1ojVHXM5m1CDqOQ5j6GmbJi3aqsoXRA
         2pXUwb8bRq7mhH1ReU2gzzO4fdypED7WOGer5T9TrJfQNpRb9wuKpCzMU7ZNRv0vB9Dh
         ERlGzzUu/CEVGsS7vAZHwEc0Vd9iYTSHim76MULFySiXPju43Cg19AxKQTofHprtIqgL
         mOUM/oW3/fe3cM5CYSQC8TsyCJhZt6SpYtMfA73HzPZkz0+Pic9a/1uj+/JKbbKZMWrP
         DFqQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=WJNAhtDM;
       spf=pass (google.com: domain of srs0=30/j=nk=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=30/j=NK=linuxfoundation.org=gregkh@kernel.org"
Return-Path: <SRS0=30/j=NK=linuxfoundation.org=gregkh@kernel.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id w9si1514753uac.0.2018.10.30.02.34.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 30 Oct 2018 02:34:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of srs0=30/j=nk=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=WJNAhtDM;
       spf=pass (google.com: domain of srs0=30/j=nk=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=30/j=NK=linuxfoundation.org=gregkh@kernel.org"
Received: from localhost (ip-213-127-77-176.ip.prioritytelecom.net [213.127.77.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 6ECFF20827;
	Tue, 30 Oct 2018 09:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1540892074;
	bh=Da0YMPCvRpidwwze0/iQNL3fOyGRazAoPdOU8u+uP/A=;
	h=Date:From:To:Subject:From;
	b=WJNAhtDMKYfuxJziviCwBY9HwftJjtbDMPCUK3xK9U502K7Df02FoRxAH0W77E2qZ
	 VirX0iUGCIlv1nIc4XbFG1Ni8AaVnJUbnclgxB6TmTvrHhrPqCFwMh4PDP2idsC8tf
	 6r1Y91HeHcO+pw8N7fwF4KNAWY25gVcr8b7pZ8x8=
Date: Tue, 30 Oct 2018 10:34:59 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: outreachy-kernel@googlegroups.com
Subject: Outreachy patches caught up on.
Message-ID: <20181030093459.GA24461@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)

Hi all,

I'm now caught up on all submitted outreachy patches that I can apply
(i.e. ones for the drivers/staging/ tree that are not drm patches.)

If you have not gotten an email from my patch system saying that your
patch was applied, consider it lost, and please rebase and resend it.

thanks,

greg k-h

