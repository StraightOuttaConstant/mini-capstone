class Product < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :price, presence: true
  validates :price, numericality: { greater_than: 0 }
  validates :description, length: { in: 10..500 }

  def discounted?
    price < 50
  end

  def tax
    price * 0.09
  end

  def total
    tax + price
  end
end





puts <<-REPTAR
                                               MMMM        .NMMM.
                                               MMMMMM     =NMMMM.               
                                              MNMMMMMMMNMMMMMMMM.
                                              ,NMMMMMMMMMMMMMMMMMM.
                                               MMMMMMMMMMMMMMMMMMMMMMMM.
                                             ,MMMMMMMMMMMMMMMMMMMMMMMMM 
                                       ,MMMM MMMMMMMMMMMMMMMMMMMMMMMMMM 
                                        MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM.
                                       ,MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMN8.
                                        .MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM 
                                         .MMMMMMMMMMMMM,MMMMMMMMMMMMMMMMMMMNMMMM
                                       ..MMMMMMMMMMMMMMMMMM :+.DMMMMMMMMMMMMMMN 
                                    ....MMMMMMMMMMMMMMMMMM.  ...D.MDMMMMMMMMMMN.
                              . . NN:M. MMMMMMMMMMMMMMMMMM.       ..,.. .MMMMM..
                             . MNMMMMMMMMMMMMMMMMMMMMMMMMMM              .. ,   
                              ..MMMMMMMMMMMMMMMMMMM.,MMMMMM  .                  
                                ,MMMMMMMMMMMMMMMMMMMMMMM MMNNM .:         Do You Really Want To Write This Code?       
                                 .MNMMMMMMMMMMMMMMMMMMMMMMMM.MDDM 7             
                                   .MMMMMMMMMMMMMMMMMMMMMMMMMMMMN8NM?           
                                   .MMMMMMMMMMMMMMMMMMMMM.NNMNMMMM~DO$.         
                                 . MMMMMMMMMMMMMMMMMMMMMI.   ..$MMNMM8.         
                            .MM?,.:MMMMMMMMMMMMMMMMMMMMMNM....    :$...         
                          .NMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM.                   
                          .MNMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM                   
                          .MMNMMMMMMMMMMMMMMMMMMMMMMMMMMMMM .                   
                            ..MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM,.                 
                                MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMZ:                
                               .MMMMMMMMMMMMMMMMMMMMMMMM...MMMMM.               
                                MMMMMMMMMMMMMMMMMMMMMMMM:.=MMMMNM               
                         .     ZMMMMMMMMMMMMMMMMMMMMMMMM: $MMNMMM               
...................... .NMMM..MMMMMMMMMMMMMMMMMMMMMMMMMMM..$I8M??...............
                       .MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM  .                    
                       .DNMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM                       
                         ,MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM.                      
                           MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNM                     
                   . .   .MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNMN88                   
  .              .DDDI . DMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNND                  
M8  .            ~NDDDM.MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM                  
MMMM8+.          NDNNMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM .                
MMMDM    M8MDM    .MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM .                
MMMMM?  . MNNM,..MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMN. ................
 MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMN?. ................
. NMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM ...................
. +MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNMM.MMMMMMMMMMM .....................
 . .MMMMMMMMMMMMMMMMMMMMMMMMNMMMMMMMMMMM~: .....DMMMMMMMMMNNNNMMN.... .  . .. . 
 . .. MNMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNNMMMMMMMMMMMMMMMMMMMMMMM .. .  . .. . 
      ...MMMMMMMNNDMMMMMMM. .MMMMMMMMMMMMMMMNMMMMMMMMMMMMMMMMMMM~,.             
            .. . .   .       7MMMMMMMMMMNMMMMNMMM..      ...   .                
                            .          . .M..  ....                             
REPTAR









