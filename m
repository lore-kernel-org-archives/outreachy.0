X-GM-THRID: 6470117861435113472
X-Received: by 10.28.101.133 with SMTP id z127mr2098659wmb.32.1507047312856;
        Tue, 03 Oct 2017 09:15:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.187.19 with SMTP id r19ls3369023wrg.1.gmail; Tue, 03 Oct
 2017 09:15:12 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QA8z6/1d+PwkLcKaxGVyeepftHXyQsTBiSGvzvhX3wmWpHPMjf07dMnbRkbrRtqgTyIOS5B
X-Received: by 10.28.47.197 with SMTP id v188mr1813896wmv.23.1507047312177;
        Tue, 03 Oct 2017 09:15:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507047312; cv=none;
        d=google.com; s=arc-20160816;
        b=doLmSq3uprNOzRn6sRUIH+kfHmEKJrGSSsupVC2/UuEXOahNPhUtKCgfIG2fqVIDoH
         TK6VjwwyvAwx7muJixqWqA91G5rVK8s7qqs5lhHwGnkfTF0pf6Fvn+qilviibLU59m9p
         CUcTfU8k1NZjT38u+9cr34FaszsrBSe31OhRuDZwTWdlWicgF/Fv23FhfyT7shNptr2b
         FdH/MtGJpKY+gZihGgMObn6JLvhuR5GWhp9hzBp1FrxPC09oqP5+7KbmdlrsedAlHCvf
         vE1r0xOqoMaOouWn1R3qTywEwnFCur9CEQIxGjzCcR69iyHipe2xC1Ahx25XOtHoi5kZ
         SufQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=bxXi5Zsv9V0NdtIqjbs15L7igtVXewzO8Ld7ip7LZfk=;
        b=KHQwRujQPt898c0lOasxZaK5EGbjGUGStkO2Mn293qev9iJZ1JK3XQqg1nD1+gnSOn
         vUPSnVMzLt7ekwynt1CDRPxBuXHufnAlxgD8Gv+ezeIgfoZOZDZ+nP0yNnJkeLvbkvwH
         zIYjNaf2JetfCmNv5TfQSYarxxYwDOJi1l03tw56e8w6w5YJSYw+uNqcEVxg7mfLuhUZ
         DKldb+l6NwnjzDhsiUjHsvBI5I9VN+B8kiUfu4eVQEL0T2ao4yqWzqiUThCfz+RFwACO
         HwcuRLl2vbYZ2eZbO0Mx3PbYEIlUHIxQMsRC53hrK/oK4ZpR/DNm154NicJb1athgJH6
         JGLQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id r65si1382284wmf.2.2017.10.03.09.15.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Oct 2017 09:15:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (LFbn-1-12253-150.w90-92.abo.wanadoo.fr [90.92.67.150])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 7926E491;
	Tue,  3 Oct 2017 16:15:10 +0000 (UTC)
Date: Tue, 3 Oct 2017 18:15:19 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Georgiana Chelu <georgiana.chelu93@gmail.com>
Cc: outreachy-kernel@googlegroups.com,
	Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: Re: [PATCH v3 6/7] Staging: media: atomisp: Merge quoted string
 split across lines
Message-ID: <20171003161519.GC7303@kroah.com>
References: <cover.1506891671.git.georgiana.chelu93@gmail.com>
 <89918bf8d752305d253b9fda889fdbfe04456900.1506891671.git.georgiana.chelu93@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <89918bf8d752305d253b9fda889fdbfe04456900.1506891671.git.georgiana.chelu93@gmail.com>
User-Agent: Mutt/1.9.1 (2017-09-22)

On Mon, Oct 02, 2017 at 12:34:41AM +0300, Georgiana Chelu wrote:
> Prefer merging quoted strings on one line than splitting them,
> even if the line exceeds 80 characters. It is easier to
> read and grep for strings that are not split. Also, split
> one line with over 80 characters.

It's nice to wrap changelog lines, but please do so at 72 columns.

Mauro, are you going to be taking these types of changes for this
driver, or do you want me to?

thanks,

greg k-h

