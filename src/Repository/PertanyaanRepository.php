<?php

namespace App\Repository;

use App\Entity\Pertanyaan;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @method Pertanyaan|null find($id, $lockMode = null, $lockVersion = null)
 * @method Pertanyaan|null findOneBy(array $criteria, array $orderBy = null)
 * @method Pertanyaan[]    findAll()
 * @method Pertanyaan[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class PertanyaanRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Pertanyaan::class);
    }

    // /**
    //  * @return Pertanyaan[] Returns an array of Pertanyaan objects
    //  */
    /*
    public function findByExampleField($value)
    {
        return $this->createQueryBuilder('p')
            ->andWhere('p.exampleField = :val')
            ->setParameter('val', $value)
            ->orderBy('p.id', 'ASC')
            ->setMaxResults(10)
            ->getQuery()
            ->getResult()
        ;
    }
    */

    /*
    public function findOneBySomeField($value): ?Pertanyaan
    {
        return $this->createQueryBuilder('p')
            ->andWhere('p.exampleField = :val')
            ->setParameter('val', $value)
            ->getQuery()
            ->getOneOrNullResult()
        ;
    }
    */
}
