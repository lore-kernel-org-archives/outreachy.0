X-GM-THRID: 6465205340686254080
X-Received: by 10.101.86.13 with SMTP id l13mr10954109pgs.103.1505297920661;
        Wed, 13 Sep 2017 03:18:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.117.211 with SMTP id y202ls2944843itc.17.canary-gmail; Wed,
 13 Sep 2017 03:18:39 -0700 (PDT)
X-Received: by 10.99.42.141 with SMTP id q135mr1457024pgq.50.1505297919922;
        Wed, 13 Sep 2017 03:18:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505297919; cv=none;
        d=google.com; s=arc-20160816;
        b=jdKmfstYAMYFqDvNAPd8KJgT61599vf028aQicSgYJy8SibTyVCtk0Tu8L0hZ5x/Gb
         aiXVjVVfMQOj+L+juajQCHKIpoishntWuCQFm5w4wA/pfjAzQMcNF1Xvug5Rglu1bzIW
         IKG/o3sngpCINLQif5fJZUdiDmDku/dHDVvGket2nS+jwYYHXbJ4auqLMGa+/ElaoOI5
         XQhVLTrlRt+B2nMxyskD01Wagp3plYBCp3FmnETrOY8yjdXNyARvykNrf0nKU2ThDBfw
         nX3TH53V2gw4ZpFyhJqO5gSaZai+8IixpCPwC73EsZEpBJYbuWoPFVjkjBUd1DHF8lZd
         sjBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature:arc-authentication-results;
        bh=RBJw4IQhh2eXZK6oU7Aa6xv5fQ/jQcwWEZKLMRIa3bk=;
        b=HZFnFLvuqkcJLhSjEhkMsk4ybVZ3gzFu/SR+lWSxZW4Yex8rs+1162EAZtbtT5x+WW
         iuVJCNJCLzmuAgdQCjAicR2aiBhaa2tvoIJO0wZ6EYrs+nfNzFizdpASuhAUAK0e/4X1
         kczudTTXblQBicOvbbx0G7wmTUivgGaNH5LrwKLa/DPtEHPLhZ1v88oB+FN3+WDqWCIg
         QbvGZwVsmHESUtL1sxNKGYHOcY+FCCGgsgQZPDyvF6Xd2GzrzBcTa/CEVi/2NQoc3CLp
         sA8dgb4JXAJ1Y76Us8zJbGRQn5QlvpRyjl7vgrbvUmJYB2zzz9YXLcpHIeQUeauteao8
         4GeQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lq4u+bRK;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <meghana.madhyastha@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id k76si1399823pfa.10.2017.09.13.03.18.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 Sep 2017 03:18:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lq4u+bRK;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id d8so7444602pgt.3
        for <outreachy-kernel@googlegroups.com>; Wed, 13 Sep 2017 03:18:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=RBJw4IQhh2eXZK6oU7Aa6xv5fQ/jQcwWEZKLMRIa3bk=;
        b=lq4u+bRK/0qMuFxdiS/Bk1SZdCvHPNIgTJAkEMLRa/6GrGOc+N63N6ufVGqOLbBbPA
         IAauNx+isOu4JfaAjcPyEEX0Mhy/61GfP51zqwbtCvewp+sfdC6XDiXlUyaCjBYkgGWS
         lrdaajA1CMBRUuL5zprcjScXzcRRQJIw36R8j/z6QDENYJM8+pJ/BlIRRWCjLpLi+q8P
         tIjY/CIE/AiO4CayDA99pD+IlJ6gnHcLCSGNbjOhW2OqFKa+WEQ1CP2hFZJU5IGRGHGP
         rsrei+n/33+0SUjA5q1nOEZXZOyG1JE7zygn7N4pUE6VzIN4iR5jD2qmG2BoPlE/wxjl
         HQyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=RBJw4IQhh2eXZK6oU7Aa6xv5fQ/jQcwWEZKLMRIa3bk=;
        b=F7B4HG8a2Dz2t3V4vRIcwa1bNSjp34Q17IrrvJMUv5TwEZtd1/pvc4/TEMNvwKMtZx
         f6soGN/3cYKysFWvi5OyFMl1dkFtkNltPyGLAxi3W0aZM9JSiHKxgVfNLtLbtCROX8+2
         NtGKaFTX3CNsPOfxSgQLfmpDPg8ihhWoPHaDMNxciQC52CeO5VWLfEtrn5WTyppCnE5c
         SxFH0oIpk9r/RrVI8u4M7vrtuKKPaegIDpDaY0YxrB32TQFRt6fROdV7iMLKmVf/dolm
         owBuMJOvTHQUd/4/Q92lmtNZs+Z4wyxQ0Uw7r1E6efOJhXRL6W1KW5sI9MHC43N1G+n1
         OI1w==
X-Gm-Message-State: AHPjjUg8UQGrLaFhaTG3HlGxDSR525PSbv7C++Y0oRdP5U9DAibJrr6U
	g6m/JKQIbsqZ0A==
X-Google-Smtp-Source: ADKCNb4zEqRE4qlKIDggSECwNw5xNZY8bHC3VufM2bE9yWOP1pkV5K5MzyvpB2vM7tNOM7s+30gbng==
X-Received: by 10.101.70.203 with SMTP id n11mr17097664pgr.197.1505297919742;
        Wed, 13 Sep 2017 03:18:39 -0700 (PDT)
Return-Path: <meghana.madhyastha@gmail.com>
Received: from meghana-HP-Pavilion-Notebook ([122.172.87.17])
        by smtp.gmail.com with ESMTPSA id d4sm14796553pfb.185.2017.09.13.03.18.37
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 Sep 2017 03:18:38 -0700 (PDT)
Date: Wed, 13 Sep 2017 15:48:33 +0530
From: Meghana Madhyastha <meghana.madhyastha@gmail.com>
To: Daniel Vetter <daniel.vetter@intel.com>,
	Jani Nikula <jani.nikula@linux.intel.com>,
	Sean Paul <seanpaul@chromium.org>,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 0/3] GPU: DRM: drm_agpsupport.c: Code cleanup
Message-ID: <cover.1505296813.git.meghana.madhyastha@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

These patches fix the checkpath warnings and errors
in drm_agpsupport.c

Meghana Madhyastha (3):
  GPU: DRM: Moved EXPORT_SYMBOL so that it immediately followed its
    function
  GPU: DRM: Replace "foo * bar" with "foo *bar"
  GPU: DRM: Remove assignment in if condition

 drivers/gpu/drm/drm_agpsupport.c | 41 ++++++++++++++++++++++------------------
 1 file changed, 23 insertions(+), 18 deletions(-)

-- 
2.7.4


