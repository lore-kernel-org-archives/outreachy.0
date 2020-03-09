X-GM-THRID: 6802335278632534016
X-Received: by 2002:aca:c256:: with SMTP id s83mr1007873oif.57.1583792101095;
        Mon, 09 Mar 2020 15:15:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a54:410e:: with SMTP id l14ls3154811oic.2.gmail; Mon, 09 Mar
 2020 15:14:59 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtHraPRRrg2z3qFOv01MQTiPMPqnXXA5Ewo15xdTZtFmccOwt399DY4/vqTaHP4icVVVpKr
X-Received: by 2002:aca:5557:: with SMTP id j84mr12997oib.143.1583792099654;
        Mon, 09 Mar 2020 15:14:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583792099; cv=none;
        d=google.com; s=arc-20160816;
        b=CfdVC+JIqhHAZF8yVg5iIJhSEHKXdjRq0D2jHfYEASZrdYAtqKU70ZhULSknQg7Uub
         rcgnn1/LN73M3ARJXxe7FksvP7YN6PmRI0CEIEmfMmt3luc9InarPbeZsWUn+XtSJCet
         1wVzfQh74Z7glhDxvIpbrPgQ/tBYi5RBMZfKQjbcLh83uVDwsThf0IX7OQEe8sl3S8TX
         9lmtBgvS/kLt2hI9WLUKFRbq2YXPLvltmNBc3euoegW9F6Fi4D+xPp6r5K4T5Ly+xKAX
         7BNgkg8GeU1Pp/KqmPALO2f1XKE8LsvLyYxFN9RUdeqhLVkm2rNL0QSvmHzvjF4f7TFz
         HgHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :date:from:dkim-signature;
        bh=0De0Hhz9ITR6N/TwMyrX91MJk59aTBHUiBsuKTneTCM=;
        b=MLdYXjzOketj/UYN1u/ilFsZ0/i+cR3h5P2OcWsT4ygvAq/i/QKwBibElZGsRy1PJl
         gcxDO0iOyc/SIPI62f3md5XUJVJye14mBlLvywPwdaLzpav+uIoXE0+igqJsPKsd9jhZ
         pXmeuro0d1Ryfj32NL41k82aSrJTlRJWQZigKxM++kxJhKXX1ziPNz/89J80+Uyjlgx+
         FKNTPWuATP69hePAZHuR+k+O82UG+lLqhVVPmdKFwgA8Ixx3LPxv6tCNe6AbiJ9GhcYn
         BqS+sWaGPPAp3Z8J/llWruLKjxaKhYlRoJhCdclyuc1Pz9CrgwmneA6MBWZ0fhk7KGt4
         sQNw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@es-iitr-ac-in.20150623.gappssmtp.com header.s=20150623 header.b=ijktADOD;
       spf=neutral (google.com: 2607:f8b0:4864:20::536 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) smtp.mailfrom=kgupta@es.iitr.ac.in;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=iitr.ac.in
Return-Path: <kgupta@es.iitr.ac.in>
Received: from mail-pg1-x536.google.com (mail-pg1-x536.google.com. [2607:f8b0:4864:20::536])
        by gmr-mx.google.com with ESMTPS id o11si701188otk.0.2020.03.09.15.14.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Mar 2020 15:14:58 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::536 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) client-ip=2607:f8b0:4864:20::536;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@es-iitr-ac-in.20150623.gappssmtp.com header.s=20150623 header.b=ijktADOD;
       spf=neutral (google.com: 2607:f8b0:4864:20::536 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) smtp.mailfrom=kgupta@es.iitr.ac.in;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=iitr.ac.in
Received: by mail-pg1-x536.google.com with SMTP id t3so5359178pgn.1
        for <outreachy-kernel@googlegroups.com>; Mon, 09 Mar 2020 15:14:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=es-iitr-ac-in.20150623.gappssmtp.com; s=20150623;
        h=from:date:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=0De0Hhz9ITR6N/TwMyrX91MJk59aTBHUiBsuKTneTCM=;
        b=ijktADODCZoD1KrInhC8pFiL2t1G5+HXqg3TFgbhcX+dKegjF0wEa1mN8e3guER9DC
         YYbvlXGSoh23mdIaQFD7RLHcJYzCRRTmjvqlDH763KPoGjsf41FKv/4+4mv1cA4s7pb2
         JhidNybd7PcC5ERZrFzSrCp1RXEkASbjBRhwj/vlq9gwrMvbwrQGdb8kTlhdvErE0oVo
         R33eqY6oQTx6+HorpRn1WptVKJw5v81GeaLwF0/78cWbR4+wzD6S/LTIf5c5Wmuu44ca
         kVa2nG0TcoyqVzJJdLrJz+lKKwzJ0t3aEvT7/6kMidwUXjUrdi59ldy40r9YNq4YCmP3
         CWLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:date:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=0De0Hhz9ITR6N/TwMyrX91MJk59aTBHUiBsuKTneTCM=;
        b=MRZRgT5jge4BJiPlfj5jU0JdC8lBfx5VTkeRyB2xlvePkDOV7yforwpUi6P2dW8LIZ
         15sIi8dnau4fGS0S3tVAYrv5LvNtAm9GQ2stAxhOEyMTOzmVuXP5tHr8PNA3hEQn98pu
         yk+RLDTZkq+fu4osF3p4q/JBJDiGZ/A8H9ya/tS3PBvlKsAy74s9ucFLpa+U298oB5Wf
         1+E9gcHyQx4ApClADiYqZ5K5k41ASRBjr26Daf3H8DhkjyW+xcpC/eu6y+Cmn45HZM1Q
         HlQ3Xsvq/UJY9gaTGlbnPx2tROn4oxYoS65cEYcgAZWLF6OTDTe7+qvZWXuYZiKLx2Ye
         C9Qw==
X-Gm-Message-State: ANhLgQ3Hoq5S5GH3jDbQ10VtxN3DOraK9mzCEmA+lvvvbYRyf+8sBEjm
	0ZPb52k0eq7eyuHv0uRN9jCpI/XTa/265w==
X-Received: by 2002:a63:7551:: with SMTP id f17mr14988369pgn.282.1583792097507;
        Mon, 09 Mar 2020 15:14:57 -0700 (PDT)
Return-Path: <kgupta@es.iitr.ac.in>
Received: from kaaira-HP-Pavilion-Notebook ([103.37.201.174])
        by smtp.gmail.com with ESMTPSA id gc22sm535388pjb.0.2020.03.09.15.14.54
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 09 Mar 2020 15:14:56 -0700 (PDT)
From: Kaaira Gupta <kgupta@es.iitr.ac.in>
X-Google-Original-From: Kaaira Gupta <Kaairakgupta@es.iitr.ac.in>
Date: Tue, 10 Mar 2020 03:44:49 +0530
To: Ian Abbott <abbotti@mev.co.uk>,
	H Hartley Sweeten <hsweeten@visionengravers.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Forest Bond <forest@alittletooquiet.net>,
	=?iso-8859-1?B?Suly9G1l?= Pouiller <jerome.pouiller@silabs.com>,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 0/7] Cover letter
Message-ID: <20200309221449.GA5032@kaaira-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

This patch set aims at improving the code style in a few drivers in
staging. They have been found using sparse, coccinelle, and
checkpatch.pl.


