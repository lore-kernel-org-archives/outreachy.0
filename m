X-GM-THRID: 6528044448013615104
X-Received: by 10.202.4.196 with SMTP id 187mr1529856oie.86.1519939044901;
        Thu, 01 Mar 2018 13:17:24 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.83.23 with SMTP id g23ls4489433oth.15.gmail; Thu, 01 Mar
 2018 13:17:24 -0800 (PST)
X-Google-Smtp-Source: AG47ELudu4bChr9/XnuhNTxNjejbzCy7FxNPSPXER406ptaLJWSWf9e94J5E65+qQoEmXFoSh+RG
X-Received: by 10.157.40.168 with SMTP id s37mr1602942ota.97.1519939044018;
        Thu, 01 Mar 2018 13:17:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519939043; cv=none;
        d=google.com; s=arc-20160816;
        b=p3bJ7hobvC+PyJP67Rd2U13mBNTbr49YtKqPH6vwCHtun4tKlpRu0S8hx2FKr/1msF
         IMA599jmdEjY+KMzoqJDkrrNL7DgWumqUkdRvgooxws3Fjdwg2Valz9tcH8mFkPQNrwr
         PTU0sWhAnwpJcns0T0uOyOR+VtFs0DVibTTTTToW1Bln2MwB0bO2ACZNdCYdcsm5Dono
         56kxVZwo6SF89/vTmz6MTG5nWXrTIDrR87jxrnUFhFtEY2fIOqrjqCKw4wOJALSitkfF
         n0HI/tjaZb/chjiC2KQWDBXbMIuNYZ4enyJsHn18GzX+kyshbHuOaGkXorfxNCc7haZZ
         VaLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=BJ49e0C6HHLzk6aYhewrTSju38hh+gJYN82JoTueri4=;
        b=pIUfnlGeRTYeU9R3LMDFZ7gzZ5WWatDgrkiok4l/iVUi8A44Xv8Tw0XzkDe13uJHo7
         cafzIWUd2HFCMql+ID+jPYiS/1J/OoCydJcFbH16T7ooy63hS3XS5A0tGP9yPFiaWXTu
         u5p7rflPltDNViCXd9Ok0QHVsxcW0wGtdCdbvJfTGjzbk8aULdVZWGsBVQ0exWbBjUN1
         hdqwyRdRtJZMXXGRV1NSAabvh+9GmwoULiSih1TT8/bwQxapDiI2CCKVC0vTXI4Hx0m0
         WmBeunGOTzVAwfeFnN0KN/6q+Q/KhCqtPNAFFtyPm1TSJJyrnRhWgtc4A35djItO1gVb
         AcUg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=UBFIcT/Z;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::233 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from mail-pl0-x233.google.com (mail-pl0-x233.google.com. [2607:f8b0:400e:c01::233])
        by gmr-mx.google.com with ESMTPS id b13si335701otf.2.2018.03.01.13.17.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Mar 2018 13:17:23 -0800 (PST)
Received-SPF: pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::233 as permitted sender) client-ip=2607:f8b0:400e:c01::233;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=UBFIcT/Z;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::233 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Received: by mail-pl0-x233.google.com with SMTP id 93-v6so4371036plc.9
        for <outreachy-kernel@googlegroups.com>; Thu, 01 Mar 2018 13:17:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ashoka.edu.in; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=BJ49e0C6HHLzk6aYhewrTSju38hh+gJYN82JoTueri4=;
        b=UBFIcT/ZIO0GuGLV5Km5OqZZ1i7DlMtp14hqwjZH80xiEWx9doJdkuvK5KcdzDpJht
         5Tgw5RvDBA7RHrKTFmSOMufvUzPlNs3s/u9eL3QbbImadBBZh5TtyCMiBEqfCoOJ9rW2
         Wuy6EmB/CZv4iFM6eXaa3E/Zqrvq2N+hIH8BQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=BJ49e0C6HHLzk6aYhewrTSju38hh+gJYN82JoTueri4=;
        b=huREzjCYSOenheZ6qCPYW5AYl2QuF8Xo/tNbFLb6gL25LvoLlgQnuV2YE9hb4Q4m9H
         +heSSopxVK0jvtkIoSFyGD/1WQXPdb++vGnnzJ1K0o2mEQcz2VCiYFhPrxHjmTFzHxZG
         yABrvzMB3OAmzYdNIi21stESqQ017uFfF52HpnxLjN2CvYumnxmP4uMO1OOztT2opMo4
         d3jbgInMLGx2z1NhC9JDjqpVixWBMXdh43J5iup20PUKc729KZhya80LVDID3pIG44qA
         8I95mKFtgtKQ4SH7FkoVmjvMSNQLN28Uj3YafLWI2vTG3cJVy4My/n8dq1dv93BbNE4a
         D+Rw==
X-Gm-Message-State: APf1xPC7DDFpo2For4QgtE31p92msrG6j9dEyOQsMWF2bhvUEMaFqGif
	XWSWoFdibE0KLHp1xAsUW0CN4XQz
X-Received: by 2002:a17:902:33a5:: with SMTP id b34-v6mr3039492plc.263.1519939042685;
        Thu, 01 Mar 2018 13:17:22 -0800 (PST)
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from ashoka-ThinkCentre-E73z.internal.ashoka.edu.in ([125.22.40.140])
        by smtp.gmail.com with ESMTPSA id 14sm11261924pfi.132.2018.03.01.13.17.20
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 01 Mar 2018 13:17:21 -0800 (PST)
From: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
To: outreachy-kernel@googlegroups.com,
	julia.lawall@lip6.fr
Cc: gregkh@linuxfoundation.org
Subject: Re:
Date: Fri,  2 Mar 2018 02:47:14 +0530
Message-Id: <1519939034-28424-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
X-Mailer: git-send-email 1.9.1

This is with response to your message that you don't see any spaces in
the staging tree.

Yes, the commit "remove spaces after typecast to int" was an unnecessary
commit since I added the spaces in the first place. This patch was
submitted before I read your email regarding not submitting patches to
fix the incorrect changes I have proposed. Sorry about that. Will focus
on new patches from next time.

Thank you for your time, and apologies  for the confusion.

Regards, 
Nishka Dasgupta

