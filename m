X-GM-THRID: 6802456134444646400
X-Gmail-Labels: Topic type: DISCUSSION
Date: Tue, 10 Mar 2020 00:45:04 -0700 (PDT)
From: Deepak Varma <mh12gx2825@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <27ad576a-4988-4a00-8b41-315785043e6a@googlegroups.com>
In-Reply-To: <c4964bf2-b011-41fd-b854-182e53fce120@googlegroups.com>
References: <c4964bf2-b011-41fd-b854-182e53fce120@googlegroups.com>
Subject: Re: Need help locating octeon_usb driver
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_1695_2067686374.1583826304464"
X-Google-Token: EICLnfMFePZizWg38yE0
X-Google-IP: 103.240.207.69

------=_Part_1695_2067686374.1583826304464
Content-Type: multipart/alternative; 
	boundary="----=_Part_1696_107279337.1583826304464"

------=_Part_1696_107279337.1583826304464
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Thank you Wambui and Greg. I will pick another driver clean up else for 
now. It was a good learning though :)

Deepak.

On Tuesday, 10 March 2020 11:34:00 UTC+5:30, Deepak Varma wrote:
>
> Hello all,
> I made a clean up change to the octeon-usb driver file. I tried to correct 
> a checkpatch warning of exceed 80 column. However, I am not able to locate 
> this driver in the device driver list during "make menuconfig". 
>
> I have verified the driver dependencies. I am unable to understand the 
> CAVIUM_OCTEON_SOC dependency. Its set to unknown. Is this something 
> referred to as BROKEN???
>
> Thank you,
> Deepak.
>
>
------=_Part_1696_107279337.1583826304464
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<div dir="ltr"><div>Thank you Wambui and Greg. I will pick another driver clean up else for now. It was a good learning though :)</div><div><br></div><div>Deepak.<br> </div><br>On Tuesday, 10 March 2020 11:34:00 UTC+5:30, Deepak Varma  wrote:<blockquote class="gmail_quote" style="margin: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;"><div dir="ltr"><div>Hello all,</div><div>I made a clean up change to the octeon-usb driver file. I tried to correct a checkpatch warning of exceed 80 column. However, I am not able to locate this driver in the device driver list during &quot;make menuconfig&quot;. <br></div><div><br></div><div>I have verified the driver dependencies. I am unable to understand the CAVIUM_OCTEON_SOC dependency. Its set to unknown. Is this something referred to as BROKEN???</div><div><br></div><div>Thank you,</div><div>Deepak.<br></div><div><br></div></div></blockquote></div>
------=_Part_1696_107279337.1583826304464--

------=_Part_1695_2067686374.1583826304464--

