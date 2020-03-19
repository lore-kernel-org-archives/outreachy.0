X-GM-THRID: 6805811773689561088
X-Received: by 2002:ac2:41d3:: with SMTP id d19mr1230567lfi.57.1584601535519;
        Thu, 19 Mar 2020 00:05:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:8941:: with SMTP id b1ls288137ljk.8.gmail; Thu, 19 Mar
 2020 00:05:34 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vt5ubYPCmIUhginm2/NA+T65td/2PggHAXVMfA9y5b+bgzxOBNgqiyJUhzSQEzIqpL+M5je
X-Received: by 2002:a2e:9214:: with SMTP id k20mr1226844ljg.157.1584601534369;
        Thu, 19 Mar 2020 00:05:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584601534; cv=none;
        d=google.com; s=arc-20160816;
        b=bIoqSwsu/dNaBnq99ggppSCsq+YqjfUHHvD4o6Se2LBY6u6aAsh6jDuOH1JDrOtC5l
         78ecr3ffBm4JpYyGC/v0Nu9ckH5UgF+mSrGbpqOCV1P7XRnlLxP5ldN2nagddQcPRbw3
         3DWBM/c2s3SbYXATrzU9D+/hVx3VbHod9xhtDHGvGEpJrPgNO9hUl71AF5XZqSqmC8S5
         NfDljb+n54+dzXMYEPVLqZSpsdSXFbK0MVf5dDf1r+FqSN29y0I4pUP8079IOA81OxAA
         /REPmOMUMv9C2PXBsymdoDQUwuc9hzM+4Um1a9ueZ8QO9shLwSFClevyVcNYMY0slXCd
         Mv2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date;
        bh=9BBUtxXEtQ64Cmi6UmN3zXFazD1UAC2wIGc7kE3ktYs=;
        b=SIPN879Yhj+wKCg6O543WNAQnQVJlXXITemaS4zxx2gn67JbTAiUcyKJFFX2a6StoD
         vmPJ8qJ3ipByrXqXvMkG1z5yg3b4EQm+g9H0YWMzvPqoF1+Y7n2rFoLivgq8g03WrE2X
         HxknwLCBjAhaEFsNrS7cwX6gMPRE/8CrhaVcxBkGXZK5yjGURGuZKRvLxURzqI/v1KnY
         oxHfiar6c9QZ5kSBSy/x15tFZ3RnKWUZDSkLqdk8a0tfxVTvsFpg3RjAgEIrsK1qbGZj
         Hbvf+Sul6z5yDXHuv5+PgDWdmsc70XhZaHCDXo0498AMuVF/ciLHTxByuRzpKqkAt2wQ
         9Jrw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Return-Path: <vkor@vkten.in>
Received: from vkten.in (vkten.in. [104.244.73.96])
        by gmr-mx.google.com with ESMTP id d12si59756lfi.2.2020.03.19.00.05.33
        for <outreachy-kernel@googlegroups.com>;
        Thu, 19 Mar 2020 00:05:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) client-ip=104.244.73.96;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Received: (qmail 25510 invoked from network); 19 Mar 2020 07:05:32 -0000
Received: from unknown (HELO tulip.local) (vkor@vkten.in@117.202.245.105)
  de/crypted with TLSv1.3: TLS_AES_256_GCM_SHA384 [256/256] DN=none
  by vkten with ESMTPSA; 19 Mar 2020 07:05:32 -0000
Date: Thu, 19 Mar 2020 12:35:26 +0530
From: R Veera Kumar <vkor@vkten.in>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: How to change long C comment lines for a single statement
Message-ID: <20200319070524.GA1686@tulip.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)

Hi,

How to change long C comment lines for a single statement or a C header
define as per linux kernel coding style.

E.g.

	abc (xyz(), "str"); /* This is example function call with a long line comment */

which is okay:

	abc (xyz(), "str"); /* This is example function call with a
				long line comment */

	abc (xyz(), "str"); /* This is example function call with a
long line comment */

	abc (xyz(), "str");
	/* This is example function call with a long line comment */

	abc (xyz(), "str"); /*
			     * This is example function call with a
			     * long line comment
			     */

	abc (xyz(), "str");
		/*
		 * This is example function call with a
		 * long line comment
		 */

Regards,
Veera

