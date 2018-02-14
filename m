X-GM-THRID: 6522213287288897536
X-Received: by 10.157.22.228 with SMTP id s33mr1637742ots.6.1518571117325;
        Tue, 13 Feb 2018 17:18:37 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.202.51.2 with SMTP id z2ls1918333oiz.0.gmail; Tue, 13 Feb 2018
 17:18:36 -0800 (PST)
X-Google-Smtp-Source: AH8x227Jf/gajgtgUauAWTm/5TpUu1FyVLARGxX5UuFxBRc+RxkwY6RG/jFFHx2piap98Mnggf4z
X-Received: by 10.202.98.134 with SMTP id w128mr1515347oib.110.1518571116298;
        Tue, 13 Feb 2018 17:18:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1518571116; cv=none;
        d=google.com; s=arc-20160816;
        b=Ysn6g3vElNy6VFF/9taE3LWLdy9UlwSyUPzVMr5pxbBPB9W5y2tYTUffB03ExfbUDx
         YqsOYO2ftYkMN6c0fL3BlyuRcmSvEvJx4o8nXQUTIcGsET9dMfMCI39bsOB9oj+sbE4E
         8Eu+4EqsKDB7Zwz2/zpZBdmVt/U63mWF2tT9Z/qs/lzpPHQg+/kZVtA6hTr13MH9r7jn
         o6jgTDaTO7v+XtoxlapLnsDfuGlBNheKMD1/op0rsyvIKZbv7IdSxws9ecV9JKgdy8GH
         ThpI+9M7rj9Rbdyz1KTUmNP+osEeSM4IR37eSC8cOXrj3z0Kxf0GsfBHt7HkZmQk/xjh
         HqcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature:arc-authentication-results;
        bh=qZDFq1z4+boW+ppcdEosRfztJUZZ4bKU7TkzUMeE2ME=;
        b=K2wVkx0WdisbQl2m/m5KngCizeSfPEkQ9iDc8/N59506CKdEsm/vUw15UmqactM4Wz
         aY2jxbTzflyULUx9ySK3OPsaPNAvVHRwbiNLh9ZxAdW5OemtDMdoCDRZ3DMc21vN6DZo
         Tv63iN2ylJ6M0DvpW/N/CqmSIQbDRAc8Or17fSMWbWsv1a7rYbjg9iO6qAIAYkD2dQe9
         uY20NhlFXXZI+M7SzoYnQYjV/7sxTjhmf07dZDErVlqg0FAZkpjptGAiFZfMng2eLrwr
         p38lgLPyjW3zSs1+jBpJJviaXKps7SdTOpxy2mY0zIyAlm0DbVhZ+y+Rg/2Ui/B1KVWj
         9CLw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ucsc.edu header.s=ucsc-google header.b=JCTh3K8h;
       spf=pass (google.com: domain of kedunne@ucsc.edu designates 2607:f8b0:400e:c05::22d as permitted sender) smtp.mailfrom=kedunne@ucsc.edu;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ucsc.edu
Return-Path: <kedunne@ucsc.edu>
Received: from mail-pg0-x22d.google.com (mail-pg0-x22d.google.com. [2607:f8b0:400e:c05::22d])
        by gmr-mx.google.com with ESMTPS id c6si1304831oic.2.2018.02.13.17.18.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Feb 2018 17:18:36 -0800 (PST)
Received-SPF: pass (google.com: domain of kedunne@ucsc.edu designates 2607:f8b0:400e:c05::22d as permitted sender) client-ip=2607:f8b0:400e:c05::22d;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ucsc.edu header.s=ucsc-google header.b=JCTh3K8h;
       spf=pass (google.com: domain of kedunne@ucsc.edu designates 2607:f8b0:400e:c05::22d as permitted sender) smtp.mailfrom=kedunne@ucsc.edu;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ucsc.edu
Received: by mail-pg0-x22d.google.com with SMTP id o1so1259969pgn.4
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Feb 2018 17:18:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ucsc.edu; s=ucsc-google;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=qZDFq1z4+boW+ppcdEosRfztJUZZ4bKU7TkzUMeE2ME=;
        b=JCTh3K8h4E3EbhhRYldmik5x3VCnLMBS3F1NFGXaiu3bGbW8ngnDRJXCEUk9BLi4Ea
         DfRkA0RqP5n+FRr/ayyKqNchO1QKE19DhHcuRiU1yz3sDxNwIxGDmhC/DRmFQNKQDPW6
         SHrevuen8GnNxGSpnsljIdyVAj0nXB7ruPhAk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=qZDFq1z4+boW+ppcdEosRfztJUZZ4bKU7TkzUMeE2ME=;
        b=XeXQy/PVP37R4iyBjRbMVNzWAIhbk0FikgSmd43G5+gy6jnsQ+BgTjl7jHcV41cN3v
         AI15FznAZRd10RhmVdJtLVkg8jfOSLXFk3AOIveNM4KJslgpsQ1TeRYq4HgjKFwiWcoi
         3gKgiWqVN0UX7gJP9suHh7vzGdYBwJdIu0AXvgGz6PQFAyJf/Pkp2MH7GVlRteJ/Iw3X
         zF46/hGWUcTX+Sribx0Q6Bnljn7IWFlxRuamgaMerDtucaZPJJWomGrIL+rsSt5PXeU5
         5IwCFRJpBCeby85VTmwtGN/hk9oMfoW/ybJDmpGPVyNbl4jyEmseK8u/EIPYK6Gpy2Si
         CKwA==
X-Gm-Message-State: APf1xPBJo7YLtkHA/vzE+h1J+ymJ5TCSso6Vq/l2Fux8bALtcWFG+JwX
	jQX3sf3Npuh+UvdEPLiWUhfbVO9J
X-Received: by 10.99.111.8 with SMTP id k8mr2486280pgc.262.1518571115874;
        Tue, 13 Feb 2018 17:18:35 -0800 (PST)
Return-Path: <kedunne@ucsc.edu>
Received: from kdunne-Inspiron-5566 (dhcp-169-233-129-118.cruznet.ucsc.edu. [169.233.129.118])
        by smtp.gmail.com with ESMTPSA id g1sm34307573pfk.98.2018.02.13.17.18.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Feb 2018 17:18:35 -0800 (PST)
Date: Tue, 13 Feb 2018 17:18:34 -0800
From: Katie Dunne <kedunne@ucsc.edu>
To: outreachy-kernel@googlegroups.com
Subject: Initial Application
Message-ID: <20180214011834.4t7ltqv632mspyy7@kdunne-Inspiron-5566>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: NeoMutt/20170609 (1.8.3)

Hi Vaishali and other mentors,

The introduction message says we need to fill out an initial application
before contributing. The outreachy website says we must make a
contribution before applying. There is a Linux Kernel landing page where
we must 'Record a Contribution' before we are given access to a link to
submit an application, e.g. 'Once you've recorded at least one
contribution, you can start your application for the project.' from the
following link:

https://www.outreachy.org/2018-may-august/communities/linux-kernel/migrate-nand-driver-to-new-exec_op-framework/contributions/

I take this to mean we have to have a patch accepted before we can start
an application. Let me know if that is incorrect.

Thanks,
Katie

