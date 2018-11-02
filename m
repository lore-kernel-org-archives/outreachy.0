X-GM-THRID: 6619244143382102016
X-Received: by 2002:a9d:72c3:: with SMTP id d3mr8164172otk.2.1541162874609;
        Fri, 02 Nov 2018 05:47:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:278a:: with SMTP id c10ls293775otb.13.gmail; Fri, 02 Nov
 2018 05:47:53 -0700 (PDT)
X-Google-Smtp-Source: AJdET5cT186bwdomH6WuKM0IyajSgtxy+f9i7M6C1W5a1Bzx7YwD/436C1U0VwHjuQJJ9e9Wy2qM
X-Received: by 2002:a9d:48f8:: with SMTP id a53mr7698735otj.18.1541162873622;
        Fri, 02 Nov 2018 05:47:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1541162873; cv=pass;
        d=google.com; s=arc-20160816;
        b=QcJO9jDPH7oHfl36jVfGauB1Q81qQ1YDSSb3vhPbzQQoGH35PAx2cn8yb/BOSPwmEF
         GUw38M51WAdvhYYBteSVxp38fX+9R0BpbgbF/Lx1Fmx4zKGfTnf9hIV0XlTStRTY/QW1
         0MzwVaYUF6lp1NHMjIUJB2ZLZTCx3/r1rlGfqevkEEA1cDOE6zDfJxc5qLX/tvF2msdA
         Fe3mQYUgtu1hC4PsiYZhhaDgN1I9tgD1Q1do2L/3YPuTOZHLI8FC50X11CZ/gZBXg80q
         sKEcpOi5j/1mYoheQK/J1VxloQN5w4Sq2usfU70n23PPit82wppiNXeVOifI0JV7CWJU
         /x1Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=q99eMdmRjqUna6F0e8jyRns0XGQ6+0rSlG5FcKv2pxY=;
        b=klW08qvahw0vdS3kAakOB9wIPsy4mhgF4bcosRoZ6Rtc5i67p5ZD29J7+9/xdObWVq
         oGOG7KB5PCgQ9ppTnWqJoXbCN4gC93CN+c1/87uj3eiMHPk28qS7cLdIdPyxMD89ACox
         1v9obIhDyRgQA/el8HcYQhYLM0NQmR9p01DPUx4FIXGEcVrkQmLeaVPtqCTf4LfrZM56
         VlTTjGqRx8Peyw2XelgolmLEih3i7tfiW1DGo7WpvMWYEVRFCeZZ/0y5hN5G+KaYGKqg
         ocQGo/rw3Rv1QmWfOi+K1gku0gdN7E73xpb7uhbehSYaZ25OsS6ffn0O0siZPv0BKkBl
         I0qg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=CriEABbP;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id p24si786003otk.4.2018.11.02.05.47.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Nov 2018 05:47:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=CriEABbP;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541162869; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=IwQVM3D3veHl5UVX6zOy4yWv1qDKV3UzsrU8jhGDzyAt7FcxM2v1PzAJG009Ju5DCNqF+YCoSf6Jilr4UVbmGLbsnFFw/TvwaeecE3F/ptdTsG/ekY8JDDfmtxQY4KV+WmvZNuOoH+dawdqlYlSti4hRM5PylQgqz9fQnu8gF4I=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541162869; h=Content-Type:Cc:Date:From:MIME-Version:Message-ID:Subject:To:ARC-Authentication-Results; 
	bh=q99eMdmRjqUna6F0e8jyRns0XGQ6+0rSlG5FcKv2pxY=; 
	b=HS7+HKotVkNC4fNmDl5Cs85G1a3OOiGMCcLtGUmUutJ0uv8syEItoNzYJEoiUNAVPNrptZ89OzrjWmVcCHxtWLEOv1o7bOXDglajGcj7n9yrq0mEzLp8fTLmAYno13/vVCiMwvb21CJzLevEyuROSef7BKTDmGmHWIk9lGjCpvQ=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541162869;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type;
	l=542; bh=q99eMdmRjqUna6F0e8jyRns0XGQ6+0rSlG5FcKv2pxY=;
	b=CriEABbPFx1fGojGnzw16thbVySLPGDaSeKheMregv+xEzXAaLkgd/IBVfofxqdk
	gbjgaIlso82Vu5J84wmMDjUjQu79M6CJb4CUCX9d7G7dY4/6PXEOOidCBy+GrD7o/C+
	m8Tv3EDfssnwH+q+HE6VPnRZWrZ/JP54yonG7ttg=
Received: from kvasir.local (90.242.56.176 [90.242.56.176]) by mx.zoho.eu
	with SMTPS id 1541162867841874.6809470728804; Fri, 2 Nov 2018 13:47:47 +0100 (CET)
Date: Fri, 2 Nov 2018 12:47:46 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH v2 0/5] staging: greybus Addressed minor styling issues
Message-ID: <cover.1541162672.git.code@wizofe.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ZohoMailClient: External

Changes in v2:
	- Ammend commit messages per recommendation of julia
	- Correct typo on type per note from gregkh

Ioannis Valasakis (5):
  staging: greybus Align parameters to parentheses
  staging: greybus Shorten comparison to NULL
  staging: greybus Add a blank line after declaration
  staging: greybus Fix SPDX identifier
  staging: greybus Align arguments with parentheses

 drivers/staging/greybus/control.h | 5 +++--
 drivers/staging/greybus/core.c    | 6 +++---
 2 files changed, 6 insertions(+), 5 deletions(-)

-- 
2.19.1



