X-GM-THRID: 6806564909415923712
X-Received: by 2002:a17:90a:1d4:: with SMTP id 20mr21501628pjd.95.1584924404913;
        Sun, 22 Mar 2020 17:46:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90a:982:: with SMTP id 2ls7980303pjo.1.gmail; Sun, 22
 Mar 2020 17:46:43 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtxSzQN64RfeUSGK8SBVNexki06Qbi2/hiWVykO3cAv1bmYvHxlV4wWpFH/aGGQKBDhooEk
X-Received: by 2002:a17:902:7045:: with SMTP id h5mr7200267plt.266.1584924403290;
        Sun, 22 Mar 2020 17:46:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584924403; cv=none;
        d=google.com; s=arc-20160816;
        b=VAJuLbNzBNmbJfxHwqNweWptZKEbnQhLbein6vBHfgBQQd6mETiYCfU8nbpzsoAuKM
         c/x2893h8R19vwba/sIF3524aNG2ujQqBY2fSnStWQHKOfh/j3xrnEq4N70esygHpQdy
         ai8Ge8Wy/G0kNMSqCpvFlkTD4WOf7zz7eYfrea7Z0+54lCSo4SaEqxfJzXxAEvKh6RjN
         t+io1GRxyH7LaR8fw8qIRtGgMyx6ek2kNd4R4tTBvLU6C3quAdKuJWhPstGNOUHxi15V
         OFXV4elbU7/Q77qQL7Kjh59WRbGWHuW6hvbDwbcT5dA5wg/Ur3wuHCARxf1W/otWVPlR
         BoIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=GCzEEOul16BqqAKOJihh11F6d0QUwRoW5B7TTYyGrcM=;
        b=X8YLy7kPUTMOeFcoj+1vBgxN08GOYYuzkQwmGa+wQn88TpdzRyGtzCL1HxcfajsMGY
         VzwVcX9mril6vfmorfEjjX1EHbjYYNnIIFVuTCdete7drYAy7MwQlO5u0V1H3rtQtMQH
         dn7hDr5A3o5w71aFA7nk90qmBlzjzP8QberS3MfAwa+cJIJyhotyVUBhiYLqUwdmCCVB
         PqhJETqRc5KPv1rfOg7YOfpDYKbCbxOcx2Q3srHw4FzwK+nO/nh0doyMCDjBxZtqEiz4
         oIPBRre/luaJzROBNijv/AlDy0qo388Y+0IXAld9lrNV5w4OW3bexTwgO5J2nsRiYFsR
         fNAQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=VU148cwj;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 63.128.21.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-delivery-74.mimecast.com (us-smtp-delivery-74.mimecast.com. [63.128.21.74])
        by gmr-mx.google.com with ESMTPS id 83si528596pge.4.2020.03.22.17.46.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Mar 2020 17:46:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 63.128.21.74 as permitted sender) client-ip=63.128.21.74;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=VU148cwj;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 63.128.21.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1584924401;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=GCzEEOul16BqqAKOJihh11F6d0QUwRoW5B7TTYyGrcM=;
	b=VU148cwjSEB4XcjGFfSgmyXufDBthXhcGrSwumu05pNBo16X4OPE1sSLtmx5JzGWkxPS8t
	tLOS3pZxzwFIc/PEtZPwRLil1DBv0+3WfXfg/MiAUUiygX2RJNrv/hLBA1/zR9GgFph+L4
	BQthH49vJ2kyd00QtM4mHYiesKLUr8Y=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-186-qbyW_4DcPTCYALNesCjQ8Q-1; Sun, 22 Mar 2020 20:46:40 -0400
X-MC-Unique: qbyW_4DcPTCYALNesCjQ8Q-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4D6768010EC;
	Mon, 23 Mar 2020 00:46:39 +0000 (UTC)
Received: from elisabeth (unknown [10.40.208.5])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BC6FF9B927;
	Mon, 23 Mar 2020 00:46:36 +0000 (UTC)
Date: Mon, 23 Mar 2020 01:46:18 +0100
From: Stefano Brivio <sbrivio@redhat.com>
To: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
Cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8723bs: remove unneeded
 variables
Message-ID: <20200323014618.249ac37e@elisabeth>
In-Reply-To: <20200321074757.8321-1-payalskshirsagar1234@gmail.com>
References: <20200321074757.8321-1-payalskshirsagar1234@gmail.com>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Sat, 21 Mar 2020 13:17:57 +0530
Payal Kshirsagar <payalskshirsagar1234@gmail.com> wrote:

> Remove unneeded temporary local variables and their declarations.
> 
> Signed-off-by: Payal Kshirsagar <payalskshirsagar1234@gmail.com>

Reviewed-by: Stefano Brivio <sbrivio@redhat.com>

-- 
Stefano


